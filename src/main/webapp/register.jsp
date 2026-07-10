<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Create your FoodExpress account and start ordering from 100+ restaurants.">
    <title>FoodExpress — Create Account</title>
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

        html { height: 100%; }

        body {
            font-family: 'Inter', sans-serif;
            background: var(--bg);
            color: var(--text);
            min-height: 100vh;
            display: flex;
            align-items: flex-start;
            justify-content: center;
            padding: 2rem 1rem;
            position: relative;
            -webkit-font-smoothing: antialiased;
        }

        /* Background */
        .bg-orb {
            position: fixed; border-radius: 50%;
            pointer-events: none; z-index: 0;
        }
        .bg-orb-1 {
            width: 600px; height: 600px;
            top: -200px; right: -150px;
            background: radial-gradient(circle, rgba(255,107,107,0.10) 0%, transparent 70%);
            animation: floatOrb1 12s ease-in-out infinite;
        }
        .bg-orb-2 {
            width: 500px; height: 500px;
            bottom: -200px; left: -100px;
            background: radial-gradient(circle, rgba(255,179,71,0.08) 0%, transparent 70%);
            animation: floatOrb2 15s ease-in-out infinite;
        }
        @keyframes floatOrb1 { 0%,100%{transform:translate(0,0);} 50%{transform:translate(-40px,30px);} }
        @keyframes floatOrb2 { 0%,100%{transform:translate(0,0);} 50%{transform:translate(30px,-25px);} }

        body::before {
            content: '';
            position: fixed; inset: 0;
            background-image:
                linear-gradient(rgba(255,255,255,0.012) 1px, transparent 1px),
                linear-gradient(90deg, rgba(255,255,255,0.012) 1px, transparent 1px);
            background-size: 40px 40px;
            z-index: 0;
        }

        .register-wrapper {
            position: relative; z-index: 1;
            width: 100%; max-width: 520px;
        }

        /* Logo */
        .logo-area { text-align: center; margin-bottom: 1.8rem; }
        .logo {
            font-family: 'Outfit', sans-serif;
            font-size: 2.4rem; font-weight: 900;
            letter-spacing: -2px;
            background: linear-gradient(135deg, var(--primary), var(--orange));
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
            background-clip: text; display: inline-block;
        }
        .logo span {
            background: linear-gradient(135deg, var(--orange), #FFD700);
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
            background-clip: text;
        }
        .logo-tagline { color: var(--text-muted); font-size: 0.83rem; margin-top: 4px; }

        /* Card */
        .card {
            background: var(--bg-card);
            border: 1px solid var(--border);
            border-radius: var(--radius);
            padding: 2.2rem 2rem;
            backdrop-filter: blur(30px);
            -webkit-backdrop-filter: blur(30px);
            box-shadow: 0 0 0 1px rgba(255,255,255,0.04), 0 24px 80px rgba(0,0,0,0.5);
            animation: slideUp 0.5s ease both;
        }
        @keyframes slideUp {
            from { opacity: 0; transform: translateY(30px); }
            to   { opacity: 1; transform: translateY(0); }
        }

        .card-title {
            font-family: 'Outfit', sans-serif;
            font-size: 1.5rem; font-weight: 800;
            margin-bottom: 0.25rem; color: var(--text);
        }
        .card-sub { color: var(--text-muted); font-size: 0.875rem; margin-bottom: 1.8rem; }

        /* Alerts */
        .alert {
            padding: 11px 15px; border-radius: var(--radius-sm);
            font-size: 0.84rem; font-weight: 500;
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

        /* Form row for 2-col */
        .form-row { display: grid; grid-template-columns: 1fr 1fr; gap: 1rem; }

        .form-group { margin-bottom: 1rem; }
        .form-label {
            display: block; font-size: 0.78rem; font-weight: 600;
            color: var(--text-muted); margin-bottom: 5px;
            letter-spacing: 0.3px; text-transform: uppercase;
        }
        .required-star { color: var(--primary); margin-left: 2px; }
        .form-input-wrap { position: relative; display: flex; align-items: center; }
        .form-input-icon {
            position: absolute; left: 13px;
            color: var(--text-light); font-size: 0.95rem;
            pointer-events: none; transition: color 0.3s;
        }
        .form-input {
            width: 100%;
            background: var(--bg-input);
            border: 1.5px solid var(--border);
            border-radius: var(--radius-sm);
            padding: 12px 13px 12px 40px;
            font-family: 'Inter', sans-serif;
            font-size: 0.9rem; color: var(--text);
            outline: none; transition: var(--transition);
        }
        .form-input::placeholder { color: var(--text-light); }
        .form-input:focus {
            border-color: var(--border-focus);
            background: rgba(255,107,107,0.04);
            box-shadow: 0 0 0 4px rgba(255,107,107,0.08);
        }
        .form-input-wrap:focus-within .form-input-icon { color: var(--primary); }

        .eye-toggle {
            position: absolute; right: 12px;
            background: none; border: none;
            color: var(--text-light); cursor: pointer;
            font-size: 0.95rem; padding: 4px;
            transition: color 0.3s; line-height: 1;
        }
        .eye-toggle:hover { color: var(--primary); }

        /* Password strength */
        .strength-bar {
            height: 3px; border-radius: 3px;
            background: var(--border); margin-top: 6px;
            overflow: hidden;
        }
        .strength-fill {
            height: 100%; border-radius: 3px;
            transition: width 0.4s ease, background 0.4s;
            width: 0%;
        }
        .strength-text { font-size: 0.72rem; color: var(--text-light); margin-top: 3px; }

        /* Optional tag */
        .optional-tag {
            font-size: 0.68rem; color: var(--text-light);
            background: rgba(255,255,255,0.05);
            border: 1px solid var(--border);
            border-radius: 4px; padding: 1px 5px;
            margin-left: 6px; vertical-align: middle;
        }

        /* Submit */
        .btn-submit {
            width: 100%; padding: 13px;
            background: linear-gradient(135deg, var(--primary), var(--orange));
            border: none; border-radius: var(--radius-full);
            color: white;
            font-family: 'Outfit', sans-serif;
            font-size: 0.98rem; font-weight: 700;
            cursor: pointer; transition: var(--transition);
            box-shadow: 0 4px 20px var(--primary-glow);
            margin-top: 0.5rem;
            display: flex; align-items: center; justify-content: center; gap: 8px;
        }
        .btn-submit:hover { transform: translateY(-2px); box-shadow: 0 8px 28px var(--primary-glow); filter: brightness(1.08); }
        .btn-submit:active { transform: translateY(0); }

        .divider {
            display: flex; align-items: center; gap: 12px;
            margin: 1.4rem 0;
            color: var(--text-light); font-size: 0.78rem;
        }
        .divider::before, .divider::after {
            content: ''; flex: 1; height: 1px; background: var(--border);
        }

        .login-row {
            text-align: center; font-size: 0.875rem; color: var(--text-muted);
        }
        .login-row a {
            color: var(--primary); font-weight: 700;
            text-decoration: none; transition: opacity 0.2s;
        }
        .login-row a:hover { opacity: 0.8; }

        /* Terms */
        .terms-note {
            text-align: center; font-size: 0.74rem; color: var(--text-light);
            margin-top: 1.2rem; line-height: 1.5;
        }
        .terms-note a { color: var(--text-muted); text-decoration: underline; }

        @media (max-width: 480px) {
            .form-row { grid-template-columns: 1fr; }
            .card { padding: 1.8rem 1.4rem; }
        }

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
    </style>
</head>
<body>
<script>(function(){var t=localStorage.getItem('fe-theme')||'dark';document.documentElement.setAttribute('data-theme',t);})();</script>
<button class="theme-toggle-btn" id="themeToggle" onclick="toggleTheme()" title="Toggle theme">&#9728;&#65039;</button>

<div class="bg-orb bg-orb-1"></div>
<div class="bg-orb bg-orb-2"></div>

<div class="register-wrapper">
    <div class="logo-area">
        <div class="logo">Food<span>Express</span></div>
        <div class="logo-tagline">🍔 Join 50,000+ happy food lovers</div>
    </div>

    <div class="card">
        <div class="card-title">Create Account 🎉</div>
        <div class="card-sub">Sign up and start ordering in minutes</div>

        <c:if test="${not empty error}">
            <div class="alert alert-error">⚠️ <span><c:out value="${error}"/></span></div>
        </c:if>
        <c:if test="${not empty success}">
            <div class="alert alert-success">✅ <span><c:out value="${success}"/></span></div>
        </c:if>

        <form action="${pageContext.request.contextPath}/register" method="POST" id="registerForm">

            <div class="form-row">
                <!-- Full Name -->
                <div class="form-group">
                    <label class="form-label" for="name">Full Name <span class="required-star">*</span></label>
                    <div class="form-input-wrap">
                        <input type="text" id="name" name="name" class="form-input"
                               placeholder="Your full name"
                               value="<c:out value='${name}'/>" required autocomplete="name">
                        <span class="form-input-icon">👤</span>
                    </div>
                </div>

                <!-- Username -->
                <div class="form-group">
                    <label class="form-label" for="username">Username <span class="required-star">*</span></label>
                    <div class="form-input-wrap">
                        <input type="text" id="username" name="username" class="form-input"
                               placeholder="Choose a username"
                               value="<c:out value='${username}'/>" required autocomplete="username">
                        <span class="form-input-icon">🏷️</span>
                    </div>
                </div>
            </div>

            <!-- Email -->
            <div class="form-group">
                <label class="form-label" for="email">Email Address <span class="required-star">*</span></label>
                <div class="form-input-wrap">
                    <input type="email" id="email" name="email" class="form-input"
                           placeholder="your@email.com"
                           value="<c:out value='${email}'/>" required autocomplete="email">
                    <span class="form-input-icon">📧</span>
                </div>
            </div>

            <div class="form-row">
                <!-- Password -->
                <div class="form-group">
                    <label class="form-label" for="password">Password <span class="required-star">*</span></label>
                    <div class="form-input-wrap">
                        <input type="password" id="password" name="password" class="form-input"
                               placeholder="Min 6 characters"
                               required autocomplete="new-password"
                               oninput="checkStrength(this.value)">
                        <span class="form-input-icon">🔒</span>
                        <button type="button" class="eye-toggle" onclick="togglePwd('password','eyePwd')" id="eyePwd" title="Show password">👁️</button>
                    </div>
                    <div class="strength-bar"><div class="strength-fill" id="strengthFill"></div></div>
                    <div class="strength-text" id="strengthText"></div>
                </div>

                <!-- Confirm Password -->
                <div class="form-group">
                    <label class="form-label" for="confirmPassword">Confirm Password <span class="required-star">*</span></label>
                    <div class="form-input-wrap">
                        <input type="password" id="confirmPassword" name="confirmPassword" class="form-input"
                               placeholder="Repeat password"
                               required autocomplete="new-password">
                        <span class="form-input-icon">🔐</span>
                        <button type="button" class="eye-toggle" onclick="togglePwd('confirmPassword','eyeConfirm')" id="eyeConfirm" title="Show password">👁️</button>
                    </div>
                </div>
            </div>

            <div class="form-row">
                <!-- Phone -->
                <div class="form-group">
                    <label class="form-label" for="phone">Phone <span class="optional-tag">optional</span></label>
                    <div class="form-input-wrap">
                        <input type="tel" id="phone" name="phone" class="form-input"
                               placeholder="+91 98765 43210"
                               value="<c:out value='${phone}'/>" autocomplete="tel">
                        <span class="form-input-icon">📱</span>
                    </div>
                </div>

                <!-- Address -->
                <div class="form-group">
                    <label class="form-label" for="address">Address <span class="optional-tag">optional</span></label>
                    <div class="form-input-wrap">
                        <input type="text" id="address" name="address" class="form-input"
                               placeholder="Delivery address"
                               value="<c:out value='${address}'/>" autocomplete="street-address">
                        <span class="form-input-icon">📍</span>
                    </div>
                </div>
            </div>

            <button type="submit" class="btn-submit" id="registerBtn">
                <span>🚀</span> Create Account
            </button>
        </form>

        <div class="divider">or</div>

        <div class="login-row">
            Already have an account?
            <a href="${pageContext.request.contextPath}/login">Sign in →</a>
        </div>

        <div class="terms-note">
            By creating an account you agree to our
            <a href="#">Terms of Service</a> &amp; <a href="#">Privacy Policy</a>
        </div>
    </div>
</div>

<script>
    function togglePwd(inputId, btnId) {
        var input = document.getElementById(inputId);
        var btn = document.getElementById(btnId);
        if (input.type === 'password') {
            input.type = 'text'; btn.textContent = '🙈';
        } else {
            input.type = 'password'; btn.textContent = '👁️';
        }
    }

    function checkStrength(val) {
        var fill = document.getElementById('strengthFill');
        var text = document.getElementById('strengthText');
        if (!val) { fill.style.width = '0'; text.textContent = ''; return; }
        var score = 0;
        if (val.length >= 6) score++;
        if (val.length >= 10) score++;
        if (/[A-Z]/.test(val)) score++;
        if (/[0-9]/.test(val)) score++;
        if (/[^A-Za-z0-9]/.test(val)) score++;
        var colors = ['#FF5252','#FF9800','#FFD600','#66BB6A','#2ECC71'];
        var labels = ['Very Weak','Weak','Fair','Strong','Very Strong'];
        var widths = ['20%','40%','60%','80%','100%'];
        var idx = Math.min(score - 1, 4);
        if (idx < 0) idx = 0;
        fill.style.width = widths[idx];
        fill.style.background = colors[idx];
        text.textContent = labels[idx];
        text.style.color = colors[idx];
    }

    document.getElementById('registerForm').addEventListener('submit', function(e) {
        var pwd = document.getElementById('password').value;
        var cpwd = document.getElementById('confirmPassword').value;
        if (pwd !== cpwd) {
            e.preventDefault();
            alert('Passwords do not match!');
            return;
        }
        var btn = document.getElementById('registerBtn');
        btn.innerHTML = '<span>⏳</span> Creating account...';
        btn.style.opacity = '0.8';
        btn.disabled = true;
    });

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
</script>
</body>
</html>
