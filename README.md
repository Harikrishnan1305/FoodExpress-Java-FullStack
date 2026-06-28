<div align="center">

# 🍛 FoodExpress
### Full-Stack Online Food Ordering System

*A production-grade Zomato/Swiggy clone — built from scratch with core Java EE.*

[![Java](https://img.shields.io/badge/Java-11+-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)](https://www.java.com)
[![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com)
[![Maven](https://img.shields.io/badge/Apache_Maven-C71A36?style=for-the-badge&logo=apachemaven&logoColor=white)](https://maven.apache.org)
[![Tomcat](https://img.shields.io/badge/Tomcat-9.0-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=black)](https://tomcat.apache.org)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)

[🚀 Features](#-features) • [🏗️ Architecture](#%EF%B8%8F-architecture) • [🛠️ Tech Stack](#%EF%B8%8F-tech-stack) • [⚡ Quick Start](#-quick-start) • [📸 Screenshots](#-screenshots) • [🔒 Security](#-security)

</div>

---

## 📌 Overview

**FoodExpress** is a fully functional, end-to-end online food ordering web application inspired by industry leaders like **Zomato** and **Swiggy**. Built entirely using **core Java EE technologies** without any modern framework shortcuts — demonstrating deep understanding of the Java web ecosystem, MVC design patterns, database architecture, and security best practices.

> **Why this project stands out:** Most Java web projects use Spring Boot which abstracts away the complexity. FoodExpress is built with **raw Servlets, JSP, and JDBC** — showing genuine mastery of the fundamentals that Spring Boot is built on top of.

---

## ✨ Features

### 👤 User Side
- **Zomato-style Landing Page** — Hero section, food categories, restaurant cards, collections, promotional banners, and full footer — all built with pure CSS
- **Secure Authentication** — User registration & login with session-based state management
- **Restaurant Catalog** — Browse 20+ authentic South Indian restaurants with images, ratings, cuisine tags, and delivery time
- **Smart Search** — Filter restaurants by name or cuisine type with real-time results
- **Pagination** — Server-side pagination (6 restaurants per page) for optimal performance
- **Menu Browsing** — View full menu for each restaurant with dish images, descriptions, and prices
- **Shopping Cart** — Session-based cart with add/remove items and live total calculation
- **Order Checkout** — Complete order placement with address and payment method selection
- **Order History** — Full order history with timestamps, items, and status tracking

### 🔧 Technical Highlights
- **HikariCP Connection Pool** — High-performance database connection pooling (industry standard)
- **DAO Design Pattern** — Clean separation of data access logic with interface + implementation pattern
- **MVC Architecture** — Strict Model-View-Controller separation
- **SLF4J + Logback** — Professional structured logging
- **XSS Prevention** — Output encoding on all user-generated content
- **SQL Injection Prevention** — 100% PreparedStatement usage

---

## 🏗️ Architecture

```
┌─────────────────────────────────────────────────────────┐
│                    CLIENT (Browser)                      │
└───────────────────────┬─────────────────────────────────┘
                        │ HTTP Request
┌───────────────────────▼─────────────────────────────────┐
│              PRESENTATION LAYER (JSP/HTML/CSS/JS)        │
│  landing.jsp │ index.jsp │ home.jsp │ menu.jsp │ cart.jsp│
└───────────────────────┬─────────────────────────────────┘
                        │ Servlet Forward / Redirect
┌───────────────────────▼─────────────────────────────────┐
│               CONTROLLER LAYER (Java Servlets)           │
│  HomeServlet │ MenuServlet │ CartServlet │ LoginServlet  │
│  RegisterServlet │ CheckoutServlet │ OrderHistoryServlet │
└───────────────────────┬─────────────────────────────────┘
                        │ Business Logic
┌───────────────────────▼─────────────────────────────────┐
│                  SERVICE / DAO LAYER                     │
│  RestaurantDAO │ MenuDAO │ OrderDAO │ UserDAO            │
│  (Interface + Impl pattern)                              │
└───────────────────────┬─────────────────────────────────┘
                        │ JDBC + HikariCP
┌───────────────────────▼─────────────────────────────────┐
│                  DATABASE (MySQL 8.0)                    │
│  users │ restaurants │ menu_items │ orders │ order_items │
└─────────────────────────────────────────────────────────┘
```

---

## 🛠️ Tech Stack

| Layer | Technology | Purpose |
|---|---|---|
| **Language** | Java 11 | Core application logic |
| **Web Framework** | Java Servlets 4.0 | HTTP request handling & routing |
| **View Layer** | JSP + JSTL + EL | Dynamic HTML rendering |
| **Database** | MySQL 8.0 | Relational data persistence |
| **Connection Pool** | HikariCP 5.x | High-performance DB connections |
| **Build Tool** | Apache Maven | Dependency management & packaging |
| **Server** | Apache Tomcat 9.0 (via Cargo) | Servlet container |
| **Logging** | SLF4J + Logback | Structured application logging |
| **Frontend** | HTML5 + CSS3 + Vanilla JS | UI/UX with glassmorphism design |

---

## ⚡ Quick Start

### Prerequisites
- JDK 11 or higher
- Apache Maven 3.6+
- MySQL Server 8.0+

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/Harikrishnan1305/FoodExpress-Java-FullStack.git
cd FoodExpress-Java-FullStack
```

### 2️⃣ Database Setup
```bash
mysql -u root -p < sql/schema.sql
```
*This creates the `food_ordering_db` database with all tables and seeds 20 restaurants + full menus.*

### 3️⃣ Configure Database Password
```bash
# Copy the template
cp src/main/resources/db.properties.example src/main/resources/db.properties

# Edit and add your MySQL password
# db.password=YOUR_PASSWORD_HERE
```

### 4️⃣ Build & Run
```bash
mvn clean package cargo:run
```

### 5️⃣ Open in Browser
```
http://localhost:8080/FoodOrderingSystem/
```

> **Windows users:** Use the included `run.bat` to cleanly kill previous instances and restart.

---

## 🔒 Security

| Threat | Mitigation Applied |
|---|---|
| **SQL Injection** | 100% `PreparedStatement` usage across all DAO classes |
| **XSS (Cross-Site Scripting)** | JSTL `<c:out>` output encoding on all user-rendered data |
| **Credential Exposure** | `db.properties` in `.gitignore` — password never committed to VCS |
| **Session Fixation** | New session created on login; old session invalidated |
| **Sensitive Data in Logs** | Passwords never logged; SLF4J parameterized logging |
| **Connection Leaks** | HikariCP manages pool; explicit `finally` block cleanup |

---

## 📂 Project Structure

```
FoodExpress-Java-FullStack/
├── sql/
│   └── schema.sql                    # DB schema + seed data (20 restaurants)
├── src/
│   └── main/
│       ├── java/com/foodapp/
│       │   ├── dao/                  # DAO interfaces
│       │   │   └── impl/             # DAO implementations
│       │   ├── model/                # POJO models (User, Restaurant, Menu, Order)
│       │   ├── servlet/              # Controller servlets
│       │   └── util/                 # DBConnection (HikariCP)
│       ├── resources/
│       │   ├── db.properties.example # Safe credential template
│       │   └── logback.xml           # Logging configuration
│       └── webapp/
│           ├── css/style.css         # Global stylesheet (dark theme)
│           ├── js/app.js             # Frontend interactivity
│           ├── images/               # Restaurant & food images
│           ├── landing.jsp           # Public landing page (Zomato-style)
│           ├── index.jsp             # Login page
│           ├── register.jsp          # Registration page
│           ├── home.jsp              # Restaurant listing
│           ├── menu.jsp              # Restaurant menu
│           ├── cart.jsp              # Shopping cart
│           ├── checkout.jsp          # Order checkout
│           ├── order-history.jsp     # Order history
│           └── WEB-INF/web.xml       # Servlet configuration
├── run.bat                           # Windows quick-start script
├── pom.xml                           # Maven build configuration
└── README.md
```

---

## 🍽️ Restaurants Featured (20+)

The application comes pre-loaded with **20 authentic South Indian restaurants** including:

| Restaurant | Specialty |
|---|---|
| Vasantha Bhavan | Pure Veg, Tiffin |
| Murugan Idli Shop | Ghee Idli, Jigarthanda |
| Ratna Cafe | Legendary Idli Sambar |
| Anjappar Chettinad | Chettinad Spices |
| Dindigul Thalappakatti | Seeraga Samba Biryani |
| Nair Mess | Kerala Seafood |
| Saravana Bhavan | Pure Veg Meals |
| Buhari Hotel | Original Chicken 65 |
| A2B — Adyar Ananda Bhavan | Sweets & Snacks |
| Hotel Junior Kuppanna | Kongunadu |
| *...and 10 more* | |

---

## 🤝 Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.

---

## 👨‍💻 Author

**Harikrishnan**
Full-Stack Java Developer — Passionate about building real-world applications with clean architecture, secure code, and great user experience.

---

<div align="center">

⭐ **If this project helped you or impressed you, please give it a star!** ⭐

*Built with ❤️ and lots of ☕ filter coffee*

</div>
