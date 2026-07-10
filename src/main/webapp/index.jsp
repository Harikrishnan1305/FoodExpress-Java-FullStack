<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Login to FoodExpress — Order food online from 100+ restaurants delivered to your doorstep.">
    <title>FoodExpress — Login</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700;800;900&family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        *, *::before, *::after { margin: 0; padding: 0; box-sizing: border-box; }

        :root, [data-theme="dark"] {
            --primary: #FF6B6B;
            --primary-dark: #E55A5A;
            --primary-glow: rgba(255,107,107,0.25);
            --orange: #FFB347;
            --bg: #0A0A0F;
            --bg-card: rgba(22,22,35,0.95);
            --bg-input: rgba(255,255,255,0.05);
            --text: #F0F0FF;
            --text-muted: #8888AA;
            --text-light: #55556A;
            --border: rgba(255,255,255,0.08);
            --border-focus: rgba(255,107,107,0.5);
            --green: #2ECC71;
            --radius: 20px;
            --radius-sm: 12px;
            --radius-full: 100px;
            --transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        }

        [data-theme="light"] {
            --primary: #D62B38;
            --primary-dark: #B52230;
            --primary-glow: rgba(214,43,56,0.2);
            --orange: #F05A28;
            --bg: #F5F5F8;
            --bg-card: rgba(255,255,255,0.97);
            --bg-input: rgba(0,0,0,0.03);
            --text: #111111;
            --text-muted: #555566;
            --text-light: #9999AA;
            --border: rgba(0,0,0,0.1);
            --border-focus: rgba(214,43,56,0.4);
            --green: #1A9944;
        }

        html { scroll-behavior: smooth; height: 100%; }

        body {
            font-family: 'Inter', sans-serif;
            background: var(--bg);
            color: var(--text);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
            position: relative;
            -webkit-font-smoothing: antialiased;
        }

        /* ── Background orbs ── */
        .bg-orb {
            position: fixed;
            border-radius: 50%;
            pointer-events: none;
            z-index: 0;
        }
        .bg-orb-1 {
            width: 600px; height: 600px;
            top: -200px; right: -150px;
            background: radial-gradient(circle, rgba(255,107,107,0.12) 0%, transparent 70%);
            animation: floatOrb1 12s ease-in-out infinite;
        }
        .bg-orb-2 {
            width: 500px; height: 500px;
            bottom: -200px; left: -100px;
            background: radial-gradient(circle, rgba(255,179,71,0.10) 0%, transparent 70%);
            animation: floatOrb2 15s ease-in-out infinite;
        }
        .bg-orb-3 {
            width: 300px; height: 300px;
            top: 50%; left: 50%;
            transform: translate(-50%, -50%);
            background: radial-gradient(circle, rgba(46,204,113,0.06) 0%, transparent 70%);
            animation: floatOrb3 10s ease-in-out infinite;
        }
        @keyframes floatOrb1 { 0%,100%{transform:translate(0,0);} 50%{transform:translate(-40px,30px);} }
        @keyframes floatOrb2 { 0%,100%{transform:translate(0,0);} 50%{transform:translate(30px,-25px);} }
        @keyframes floatOrb3 { 0%,100%{transform:translate(-50%,-50%) scale(1);} 50%{transform:translate(-50%,-50%) scale(1.15);} }

        /* Grid pattern */
        body::before {
            content: '';
            position: fixed; inset: 0;
            background-image:
                linear-gradient(rgba(255,255,255,0.015) 1px, transparent 1px),
                linear-gradient(90deg, rgba(255,255,255,0.015) 1px, transparent 1px);
            background-size: 40px 40px;
            z-index: 0;
        }

        /* ── Main wrapper ── */
        .login-wrapper {
            position: relative; z-index: 1;
            width: 100%; max-width: 460px;
            padding: 1.5rem;
        }

        /* ── Logo ── */
        .logo-area {
            text-align: center;
            margin-bottom: 2rem;
        }
        .logo {
            font-family: 'Outfit', sans-serif;
            font-size: 2.8rem; font-weight: 900;
            letter-spacing: -2px;
            background: linear-gradient(135deg, var(--primary), var(--orange));
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
            background-clip: text;
            display: inline-block;
            filter: drop-shadow(0 0 20px var(--primary-glow));
        }
        .logo span {
            background: linear-gradient(135deg, var(--orange), #FFD700);
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
            background-clip: text;
        }
        .logo-tagline {
            color: var(--text-muted);
            font-size: 0.85rem;
            margin-top: 6px;
            letter-spacing: 0.5px;
        }

        /* ── Card ── */
        .card {
            background: var(--bg-card);
            border: 1px solid var(--border);
            border-radius: var(--radius);
            padding: 2.5rem 2rem;
            backdrop-filter: blur(30px);
            -webkit-backdrop-filter: blur(30px);
            box-shadow:
                0 0 0 1px rgba(255,255,255,0.04),
                0 24px 80px rgba(0,0,0,0.5);
            animation: slideUp 0.5s ease both;
        }
        @keyframes slideUp {
            from { opacity: 0; transform: translateY(30px); }
            to   { opacity: 1; transform: translateY(0); }
        }

        .card-title {
            font-family: 'Outfit', sans-serif;
            font-size: 1.6rem; font-weight: 800;
            margin-bottom: 0.3rem;
            color: var(--text);
        }
        .card-sub {
            color: var(--text-muted);
            font-size: 0.875rem;
            margin-bottom: 2rem;
        }

        /* ── Alerts ── */
        .alert {
            padding: 12px 16px;
            border-radius: var(--radius-sm);
            font-size: 0.84rem;
            font-weight: 500;
            margin-bottom: 1.2rem;
            display: flex; align-items: center; gap: 8px;
            animation: fadeIn 0.3s ease;
        }
        @keyframes fadeIn { from{opacity:0;transform:translateY(-6px);} to{opacity:1;transform:translateY(0);} }
        .alert-error {
            background: rgba(255,107,107,0.12);
            border: 1px solid rgba(255,107,107,0.25);
            color: #FF8A8A;
        }
        .alert-success {
            background: rgba(46,204,113,0.12);
            border: 1px solid rgba(46,204,113,0.25);
            color: #5DDB9A;
        }

        /* ── Form ── */
        .form-group { margin-bottom: 1.1rem; }
        .form-label {
            display: block;
            font-size: 0.8rem; font-weight: 600;
            color: var(--text-muted);
            margin-bottom: 6px;
            letter-spacing: 0.3px;
            text-transform: uppercase;
        }
        .form-input-wrap {
            position: relative;
            display: flex; align-items: center;
        }
        .form-input-icon {
            position: absolute; left: 14px;
            color: var(--text-light);
            font-size: 1rem; pointer-events: none;
            transition: color 0.3s;
        }
        .form-input {
            width: 100%;
            background: var(--bg-input);
            border: 1.5px solid var(--border);
            border-radius: var(--radius-sm);
            padding: 13px 14px 13px 42px;
            font-family: 'Inter', sans-serif;
            font-size: 0.92rem;
            color: var(--text);
            outline: none;
            transition: var(--transition);
        }
        .form-input::placeholder { color: var(--text-light); }
        .form-input:focus {
            border-color: var(--border-focus);
            background: rgba(255,107,107,0.04);
            box-shadow: 0 0 0 4px rgba(255,107,107,0.08);
        }
        .form-input:focus + .form-input-icon,
        .form-input-wrap:focus-within .form-input-icon {
            color: var(--primary);
        }

        /* Eye toggle */
        .eye-toggle {
            position: absolute; right: 14px;
            background: none; border: none;
            color: var(--text-light); cursor: pointer;
            font-size: 1rem; padding: 4px;
            transition: color 0.3s;
            line-height: 1;
        }
        .eye-toggle:hover { color: var(--primary); }

        /* ── Forgot link ── */
        .forgot-link {
            display: block; text-align: right;
            font-size: 0.78rem; color: var(--text-muted);
            margin-top: -4px; margin-bottom: 1.5rem;
            transition: color 0.2s;
        }
        .forgot-link:hover { color: var(--primary); }

        /* ── Submit btn ── */
        .btn-submit {
            width: 100%;
            padding: 14px;
            background: linear-gradient(135deg, var(--primary), var(--orange));
            border: none; border-radius: var(--radius-full);
            color: white;
            font-family: 'Outfit', sans-serif;
            font-size: 1rem; font-weight: 700;
            letter-spacing: 0.3px;
            cursor: pointer;
            transition: var(--transition);
            box-shadow: 0 4px 20px var(--primary-glow);
            display: flex; align-items: center; justify-content: center; gap: 8px;
        }
        .btn-submit:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 28px var(--primary-glow);
            filter: brightness(1.08);
        }
        .btn-submit:active { transform: translateY(0); }

        /* ── Divider ── */
        .divider {
            display: flex; align-items: center; gap: 12px;
            margin: 1.5rem 0;
            color: var(--text-light); font-size: 0.78rem;
        }
        .divider::before, .divider::after {
            content: ''; flex: 1;
            height: 1px; background: var(--border);
        }

        /* ── Register link ── */
        .register-row {
            text-align: center;
            font-size: 0.875rem;
            color: var(--text-muted);
        }
        .register-row a {
            color: var(--primary);
            font-weight: 700;
            text-decoration: none;
            transition: opacity 0.2s;
        }
        .register-row a:hover { opacity: 0.8; }

        /* ── Stats at bottom ── */
        .stats-row {
            display: flex; justify-content: center; gap: 2rem;
            margin-top: 2rem;
        }
        .stat-item { text-align: center; }
        .stat-num {
            font-family: 'Outfit', sans-serif;
            font-size: 1.1rem; font-weight: 800;
            background: linear-gradient(135deg, var(--primary), var(--orange));
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
            background-clip: text;
        }
        .stat-lbl {
            font-size: 0.7rem; color: var(--text-light);
            margin-top: 2px; text-transform: uppercase; letter-spacing: 0.5px;
        }

        /* Theme toggle button */
        .theme-toggle-btn {
            position: fixed; top: 16px; right: 16px; z-index: 999;
            width: 40px; height: 40px; border-radius: 50%;
            background: var(--bg-card); border: 1.5px solid var(--border);
            font-size: 1.1rem; cursor: pointer; display: flex;
            align-items: center; justify-content: center;
            transition: var(--transition); box-shadow: 0 2px 12px rgba(0,0,0,0.15);
            backdrop-filter: blur(10px);
        }
        .theme-toggle-btn:hover { transform: scale(1.1) rotate(15deg); border-color: var(--primary); }

        @media (max-width: 480px) {
            .login-wrapper { padding: 1rem; }
            .card { padding: 2rem 1.5rem; }
            .logo { font-size: 2.2rem; }
        }
    </style>
</head>
<body>
<!-- Inline theme init to prevent flash -->
<script>(function(){var t=localStorage.getItem('fe-theme')||'dark';document.documentElement.setAttribute('data-theme',t);})();</script>
<button class="theme-toggle-btn" id="themeToggle" onclick="toggleTheme()" title="Toggle theme">&#9728;&#65039;</button>

<!-- Background orbs -->
<div class="bg-orb bg-orb-1"></div>
<div class="bg-orb bg-orb-2"></div>
<div class="bg-orb bg-orb-3"></div>

<div class="login-wrapper">
    <!-- Logo -->
    <div class="logo-area">
        <div class="logo">Food<span>Express</span></div>
        <div class="logo-tagline">🍔 Delivered hot. Every time.</div>
    </div>

    <!-- Card -->
    <div class="card">
        <div class="card-title">Welcome back 👋</div>
        <div class="card-sub">Sign in to continue ordering</div>

        <!-- Error / Success messages -->
        <c:if test="${not empty error}">
            <div class="alert alert-error">⚠️ <span><c:out value="${error}"/></span></div>
        </c:if>
        <c:if test="${not empty success}">
            <div class="alert alert-success">✅ <span><c:out value="${success}"/></span></div>
        </c:if>

        <!-- Login Form -->
        <form action="${pageContext.request.contextPath}/login" method="POST" id="loginForm">
            <div class="form-group">
                <label class="form-label" for="username">Username</label>
                <div class="form-input-wrap">
                    <input
                        type="text"
                        id="username"
                        name="username"
                        class="form-input"
                        placeholder="Enter your username"
                        value="<c:out value='${username}'/>"
                        autocomplete="username"
                        required
                    >
                    <span class="form-input-icon">👤</span>
                </div>
            </div>

            <div class="form-group">
                <label class="form-label" for="password">Password</label>
                <div class="form-input-wrap">
                    <input
                        type="password"
                        id="password"
                        name="password"
                        class="form-input"
                        placeholder="Enter your password"
                        autocomplete="current-password"
                        required
                    >
                    <span class="form-input-icon">🔒</span>
                    <button type="button" class="eye-toggle" onclick="togglePassword()" id="eyeBtn" title="Show/hide password">👁️</button>
                </div>
            </div>

            <a href="#" class="forgot-link">Forgot password?</a>

            <button type="submit" class="btn-submit" id="loginBtn">
                <span>🚀</span> Sign In
            </button>
        </form>

        <div class="divider">or</div>

        <div class="register-row">
            New to FoodExpress?
            <a href="${pageContext.request.contextPath}/register">Create account →</a>
        </div>
    </div>

    <!-- Stats -->
    <div class="stats-row">
        <div class="stat-item">
            <div class="stat-num">100+</div>
            <div class="stat-lbl">Restaurants</div>
        </div>
        <div class="stat-item">
            <div class="stat-num">25 min</div>
            <div class="stat-lbl">Avg Delivery</div>
        </div>
        <div class="stat-item">
            <div class="stat-num">4.8 ★</div>
            <div class="stat-lbl">Rating</div>
        </div>
    </div>
</div>

<script>
    function togglePassword() {
        var input = document.getElementById('password');
        var btn = document.getElementById('eyeBtn');
        if (input.type === 'password') {
            input.type = 'text';
            btn.textContent = '🙈';
        } else {
            input.type = 'password';
            btn.textContent = '👁️';
        }
    }

    function toggleTheme() {
        var html = document.documentElement;
        var next = html.getAttribute('data-theme') === 'dark' ? 'light' : 'dark';
        html.setAttribute('data-theme', next);
        localStorage.setItem('fe-theme', next);
        var btn = document.getElementById('themeToggle');
        if (btn) btn.innerHTML = next === 'dark' ? '&#9728;&#65039;' : '&#127769;';
    }
    (function() {
        var t = localStorage.getItem('fe-theme') || 'dark';
        var btn = document.getElementById('themeToggle');
        if (btn) btn.innerHTML = t === 'dark' ? '&#9728;&#65039;' : '&#127769;';
    })();

    // Button loading state on submit
    document.getElementById('loginForm').addEventListener('submit', function() {
        var btn = document.getElementById('loginBtn');
        btn.innerHTML = '<span>⏳</span> Signing in...';
        btn.style.opacity = '0.8';
        btn.disabled = true;
    });
</script>
</body>
</html>
