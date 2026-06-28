package com.foodapp.util;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

/**
 * DBConnection — HikariCP pool with layered configuration.
 *
 * Priority order (highest to lowest):
 *   1. System environment variables  (DB_URL, DB_USERNAME, DB_PASSWORD)
 *   2. src/main/resources/db.properties  (classpath file — for local dev)
 *   3. Hardcoded defaults             (URL + username only; password stays empty)
 *
 * This means:
 *   - Local dev:  put password in db.properties — no env vars needed.
 *   - Production: set DB_PASSWORD env var — overrides db.properties.
 */
public class DBConnection {

    private static final Logger log = LoggerFactory.getLogger(DBConnection.class);
    private static final HikariDataSource dataSource;

    static {
        // ── Step 1: Load db.properties from classpath (if present) ──────────
        Properties fileProps = new Properties();
        try (InputStream in = DBConnection.class
                .getClassLoader().getResourceAsStream("db.properties")) {
            if (in != null) {
                fileProps.load(in);
                log.info("Loaded db.properties from classpath");
            } else {
                log.warn("db.properties not found in classpath — using env vars / defaults");
            }
        } catch (Exception e) {
            log.warn("Could not read db.properties: {}", e.getMessage());
        }

        // ── Step 2: Resolve each value (env var wins over file wins over default) ──
        String jdbcUrl  = resolve("DB_URL",      fileProps, "db.url",
                "jdbc:mysql://localhost:3306/food_ordering_db"
                + "?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC");
        String username = resolve("DB_USERNAME", fileProps, "db.username", "root");
        String password = resolve("DB_PASSWORD", fileProps, "db.password", "");

        // ── Step 3: Build HikariCP config ────────────────────────────────────
        HikariConfig config = new HikariConfig();

        config.setJdbcUrl(jdbcUrl);
        config.setUsername(username);
        config.setPassword(password);
        config.setDriverClassName("com.mysql.cj.jdbc.Driver");

        // Pool sizing
        config.setMaximumPoolSize(10);
        config.setMinimumIdle(3);

        // Timeouts
        config.setConnectionTimeout(30_000);   // 30 s — wait for a free connection
        config.setIdleTimeout(600_000);        // 10 min — retire excess idle connections
        config.setMaxLifetime(1_800_000);      // 30 min — recycle long-lived connections
        config.setKeepaliveTime(300_000);      // 5 min  — ping idle connections

        // Leak detection — warns if connection held > 30 s (likely a missing close())
        config.setLeakDetectionThreshold(30_000);

        // Pool identity (shows in logs / JMX)
        config.setPoolName("FoodApp-Pool");

        // MySQL PreparedStatement cache
        config.addDataSourceProperty("cachePrepStmts",        "true");
        config.addDataSourceProperty("prepStmtCacheSize",     "250");
        config.addDataSourceProperty("prepStmtCacheSqlLimit", "2048");
        config.addDataSourceProperty("useServerPrepStmts",    "true");

        dataSource = new HikariDataSource(config);
        log.info("HikariCP pool initialised — jdbcUrl={}, username={}", jdbcUrl, username);
    }

    // ── Public API (same signatures as original — zero DAO changes needed) ───

    /** Borrow a connection from the pool. Caller MUST close() it. */
    public static Connection getConnection() throws SQLException {
        return dataSource.getConnection();
    }

    /** Return a connection to the pool (null-safe). */
    public static void closeConnection(Connection conn) {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                log.error("Failed to return connection to pool", e);
            }
        }
    }

    /** Call on Tomcat shutdown to drain the pool cleanly. */
    public static void shutdown() {
        if (dataSource != null && !dataSource.isClosed()) {
            dataSource.close();
            log.info("HikariCP pool shut down cleanly");
        }
    }

    // ── Private helper ───────────────────────────────────────────────────────

    /**
     * Resolve a config value with priority:
     *   System.getenv(envKey)  →  fileProps.getProperty(fileKey)  →  defaultValue
     */
    private static String resolve(String envKey, Properties fileProps,
                                  String fileKey, String defaultValue) {
        // 1. Environment variable
        String envVal = System.getenv(envKey);
        if (envVal != null && !envVal.isBlank()) {
            return envVal;
        }
        // 2. db.properties file
        String fileVal = fileProps.getProperty(fileKey);
        if (fileVal != null && !fileVal.isBlank()) {
            return fileVal;
        }
        // 3. Hardcoded default
        return defaultValue;
    }
}