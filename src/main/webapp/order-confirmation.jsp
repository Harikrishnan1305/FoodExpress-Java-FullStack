<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FoodExpress &mdash; Order Confirmed! &#127881;</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@400;600;700;800;900&family=Inter:wght@400;500;600&display=swap" rel="stylesheet">
    <style>
        *, *::before, *::after { margin: 0; padding: 0; box-sizing: border-box; }
        :root {
            --primary: #E23744; --primary-dark: #C0392B; --orange: #FF6B35;
            --primary-glow: rgba(226,55,68,0.2);
            --bg: #FAFAFA; --bg-gray: #F2F2F7; --bg-card: #FFFFFF;
            --text: #111111; --text-muted: #6B6B6B; --text-light: #ADADAD;
            --border: #E4E4E7; --shadow: 0 4px 20px rgba(0,0,0,0.08);
            --shadow-lg: 0 16px 56px rgba(0,0,0,0.14); --radius: 18px; --radius-sm: 10px;
            --radius-full: 100px; --green: #1DB954; --nav-bg: rgba(250,250,250,0.85);
            --glass: rgba(255,255,255,0.7); --glass-border: rgba(255,255,255,0.9);
            --transition: all 0.3s cubic-bezier(0.4,0,0.2,1);
        }
        [data-theme="dark"] {
            --primary: #FF6B6B; --primary-dark: #E55A5A; --orange: #FFB347;
            --primary-glow: rgba(255,107,107,0.2);
            --bg: #0A0A0F; --bg-gray: #12121A; --bg-card: rgba(22,22,35,0.95);
            --text: #F0F0FF; --text-muted: #8888AA; --text-light: #55556A;
            --border: rgba(255,255,255,0.07); --shadow: 0 4px 20px rgba(0,0,0,0.4);
            --shadow-lg: 0 16px 56px rgba(0,0,0,0.6); --green: #2ECC71;
            --nav-bg: rgba(10,10,15,0.88); --glass: rgba(22,22,35,0.8);
            --glass-border: rgba(255,255,255,0.06);
        }
        body { font-family: 'Inter', sans-serif; background: var(--bg); color: var(--text); min-height: 100vh; transition: background 0.3s, color 0.3s; -webkit-font-smoothing: antialiased; }
        a { text-decoration: none; color: inherit; }

        /* NAV */
        .nav { position: sticky; top: 0; z-index: 999; background: var(--nav-bg); backdrop-filter: blur(24px) saturate(180%); border-bottom: 1px solid var(--glass-border); padding: 0 2rem; }
        .nav-inner { max-width: 1320px; margin: 0 auto; display: flex; align-items: center; gap: 10px; height: 70px; }
        .nav-logo { font-family: 'Outfit', sans-serif; font-size: 1.6rem; font-weight: 900; letter-spacing: -1.5px; flex-shrink: 0; background: linear-gradient(135deg, var(--primary), var(--orange)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; }
        .nav-links { display: flex; align-items: center; gap: 4px; margin-left: 16px; }
        .nav-link { display: flex; align-items: center; gap: 5px; padding: 7px 14px; border-radius: var(--radius-full); font-size: 0.85rem; font-weight: 600; color: var(--text-muted); transition: var(--transition); }
        .nav-link:hover { background: var(--bg-gray); color: var(--text); }
        .nav-actions { margin-left: auto; display: flex; align-items: center; gap: 8px; }
        .theme-btn { width: 38px; height: 38px; border-radius: 50%; border: 1.5px solid var(--border); background: var(--glass); font-size: 1rem; cursor: pointer; color: var(--text); transition: var(--transition); display: flex; align-items: center; justify-content: center; }
        .theme-btn:hover { border-color: var(--primary); transform: scale(1.1) rotate(15deg); }
        .nav-avatar { width: 36px; height: 36px; border-radius: 50%; background: linear-gradient(135deg, var(--primary), var(--orange)); color: white; font-size: 0.85rem; font-weight: 800; display: flex; align-items: center; justify-content: center; text-transform: uppercase; font-family: 'Outfit', sans-serif; flex-shrink: 0; cursor: pointer; transition: var(--transition); border: 2px solid transparent; overflow: hidden; }
        .nav-avatar:hover { border-color: var(--primary); transform: scale(1.05); }

        /* SUCCESS HERO */
        .success-hero {
            background: linear-gradient(135deg, #071A0E 0%, #0D2B1A 40%, #133322 100%);
            padding: 4rem 2rem 3rem; text-align: center;
            position: relative; overflow: hidden;
        }
        .success-hero::before {
            content: '';
            position: absolute; top: -100px; left: 50%; transform: translateX(-50%);
            width: 500px; height: 500px;
            background: radial-gradient(circle, rgba(29,185,84,0.2) 0%, transparent 70%);
            border-radius: 50%; animation: heroGlow 4s ease-in-out infinite;
        }
        @keyframes heroGlow { 0%, 100% { transform: translateX(-50%) scale(1); } 50% { transform: translateX(-50%) scale(1.15); } }
        .success-anim { font-size: 5.5rem; animation: bounceIn 0.7s cubic-bezier(0.36, 0.07, 0.19, 0.97) both; position: relative; z-index: 2; }
        @keyframes bounceIn { 0% { transform: scale(0) rotate(-20deg); opacity: 0; } 60% { transform: scale(1.25) rotate(5deg); } 80% { transform: scale(0.95); } 100% { transform: scale(1) rotate(0deg); opacity: 1; } }
        .success-title { font-family: 'Outfit', sans-serif; font-size: 2.2rem; font-weight: 900; color: white; margin: 1rem 0 0.5rem; letter-spacing: -0.5px; position: relative; z-index: 2; }
        .success-sub { color: rgba(255,255,255,0.6); font-size: 0.95rem; position: relative; z-index: 2; }
        .order-id-pill { display: inline-flex; align-items: center; gap: 8px; padding: 9px 22px; background: rgba(255,255,255,0.1); backdrop-filter: blur(10px); border: 1px solid rgba(255,255,255,0.2); border-radius: var(--radius-full); color: white; font-size: 0.88rem; font-weight: 700; margin-top: 1.4rem; position: relative; z-index: 2; }

        /* MAIN */
        .main { max-width: 720px; margin: 0 auto; padding: 2.5rem 2rem 5rem; }

        /* ETA CARD */
        .eta-card {
            background: linear-gradient(135deg, rgba(226,55,68,0.06), rgba(255,107,53,0.06));
            border: 1.5px solid rgba(226,55,68,0.2); border-radius: var(--radius);
            padding: 1.5rem 1.8rem; margin-bottom: 1.5rem;
            display: flex; align-items: center; gap: 18px;
        }
        .eta-icon { font-size: 2.8rem; flex-shrink: 0; animation: float 3s ease-in-out infinite; }
        @keyframes float { 0%, 100% { transform: translateY(0); } 50% { transform: translateY(-6px); } }
        .eta-title { font-family: 'Outfit', sans-serif; font-size: 1.05rem; font-weight: 900; background: linear-gradient(135deg, var(--primary), var(--orange)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; margin-bottom: 4px; }
        .eta-sub { font-size: 0.83rem; color: var(--text-muted); }

        /* DETAIL CARD */
        .detail-card { background: var(--bg-card); border: 1px solid var(--border); border-radius: var(--radius); box-shadow: var(--shadow); overflow: hidden; margin-bottom: 1.4rem; }
        .detail-card-head { padding: 1.1rem 1.5rem; border-bottom: 1px solid var(--border); font-family: 'Outfit', sans-serif; font-size: 0.95rem; font-weight: 800; display: flex; align-items: center; gap: 8px; background: var(--bg-gray); }
        .detail-row { display: flex; justify-content: space-between; align-items: flex-start; padding: 11px 1.5rem; border-bottom: 1px solid var(--border); font-size: 0.88rem; }
        .detail-row:last-child { border-bottom: none; }
        .detail-lbl { color: var(--text-muted); font-weight: 500; }
        .detail-val { font-weight: 700; color: var(--text); text-align: right; max-width: 60%; }
        .detail-val.green { color: var(--green); }

        /* ITEMS */
        .item-row { display: flex; justify-content: space-between; padding: 10px 1.5rem; border-bottom: 1px solid var(--border); font-size: 0.87rem; }
        .item-row:last-child { border-bottom: none; }
        .item-name { color: var(--text-muted); }
        .item-name strong { color: var(--text); font-weight: 700; }
        .item-amt { font-weight: 700; color: var(--text); }

        /* TOTAL */
        .total-row { display: flex; justify-content: space-between; align-items: center; padding: 1rem 1.5rem; background: var(--bg-gray); border-top: 2px solid var(--border); }
        .total-lbl { font-family: 'Outfit', sans-serif; font-size: 1rem; font-weight: 700; }
        .total-amt { font-family: 'Outfit', sans-serif; font-size: 1.5rem; font-weight: 900; background: linear-gradient(135deg, var(--primary), var(--orange)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; }

        /* ACTIONS */
        .action-row { display: flex; gap: 12px; flex-wrap: wrap; }
        .btn-primary { flex: 1; display: flex; align-items: center; justify-content: center; gap: 8px; padding: 14px 20px; background: linear-gradient(135deg, var(--primary), var(--orange)); color: white; border-radius: var(--radius-full); font-family: 'Outfit', sans-serif; font-weight: 800; font-size: 0.95rem; transition: var(--transition); box-shadow: 0 4px 16px var(--primary-glow); }
        .btn-primary:hover { transform: translateY(-2px); filter: brightness(1.05); box-shadow: 0 8px 24px var(--primary-glow); }
        .btn-outline { flex: 1; display: flex; align-items: center; justify-content: center; gap: 8px; padding: 14px 20px; border: 2px solid var(--border); color: var(--text-muted); border-radius: var(--radius-full); font-weight: 700; font-size: 0.9rem; transition: var(--transition); }
        .btn-outline:hover { border-color: var(--primary); color: var(--primary); transform: translateY(-1px); }
    </style>
</head>
<body>
<script>(function() { var t = localStorage.getItem('fe-theme') || 'dark'; document.documentElement.setAttribute('data-theme', t); })();</script>

<nav class="nav">
    <div class="nav-inner">
        <a href="${pageContext.request.contextPath}/home" class="nav-logo">FoodExpress</a>
        <div class="nav-links">
            <a href="${pageContext.request.contextPath}/home" class="nav-link">&#127968; Home</a>
            <a href="${pageContext.request.contextPath}/order-history" class="nav-link">&#129534; Orders</a>
        </div>
        <div class="nav-actions">
            <button class="theme-btn" id="themeToggle" onclick="toggleTheme()">&#127769;</button>
            <a href="${pageContext.request.contextPath}/profile.jsp" class="nav-avatar" id="navAvatar">
                <c:out value="${fn:substring(sessionScope.userName, 0, 1)}"/>
            </a>
        </div>
    </div>
</nav>

<div class="success-hero">
    <div class="success-anim">&#127881;</div>
    <div class="success-title">Order Placed Successfully!</div>
    <div class="success-sub">Your food is being prepared with love &#10084;&#65039;</div>
    <div class="order-id-pill">&#128203; Order #<c:out value="${order.orderId}"/></div>
</div>

<div class="main">
    <div class="eta-card">
        <div class="eta-icon">&#128757;</div>
        <div>
            <div class="eta-title">Estimated Delivery: 25&ndash;35 minutes</div>
            <div class="eta-sub">Your order has been confirmed and the restaurant is preparing it right now.</div>
        </div>
    </div>

    <div class="detail-card">
        <div class="detail-card-head">&#128203; Order Details</div>
        <div class="detail-row">
            <span class="detail-lbl">Restaurant</span>
            <span class="detail-val"><c:out value="${order.restaurantName}"/></span>
        </div>
        <div class="detail-row">
            <span class="detail-lbl">Status</span>
            <span class="detail-val green">&#9989; <c:out value="${order.status}"/></span>
        </div>
        <div class="detail-row">
            <span class="detail-lbl">Payment</span>
            <span class="detail-val"><c:out value="${order.paymentMode}"/></span>
        </div>
        <div class="detail-row">
            <span class="detail-lbl">Order Date</span>
            <span class="detail-val"><fmt:formatDate value="${order.orderDate}" pattern="dd MMM yyyy, hh:mm a"/></span>
        </div>
        <div class="detail-row">
            <span class="detail-lbl">Delivery Address</span>
            <span class="detail-val"><c:out value="${order.address}"/></span>
        </div>
    </div>

    <div class="detail-card">
        <div class="detail-card-head">&#127869; Items Ordered</div>
        <c:forEach var="item" items="${orderItems}">
            <div class="item-row">
                <span class="item-name"><strong><c:out value="${item.menuName}"/></strong> &times; <c:out value="${item.quantity}"/></span>
                <span class="item-amt">&#8377;<fmt:formatNumber value="${item.price * item.quantity}" pattern="#,##0"/></span>
            </div>
        </c:forEach>
        <div class="total-row">
            <span class="total-lbl">Total Paid</span>
            <span class="total-amt">&#8377;<fmt:formatNumber value="${order.totalAmount}" pattern="#,##0"/></span>
        </div>
    </div>

    <div class="action-row">
        <a href="${pageContext.request.contextPath}/home" class="btn-primary">&#127869; Order More Food</a>
        <a href="${pageContext.request.contextPath}/order-history" class="btn-outline">&#129534; View All Orders</a>
    </div>
</div>

<script>
    function toggleTheme() {
        var html = document.documentElement;
        var next = html.getAttribute('data-theme') === 'dark' ? 'light' : 'dark';
        html.setAttribute('data-theme', next);
        localStorage.setItem('fe-theme', next);
        document.getElementById('themeToggle').innerHTML = next === 'dark' ? '&#9728;&#65039;' : '&#127769;';
    }
    window.addEventListener('storage', function(e) {
        if (e.key === 'fe-theme' && e.newValue) {
            document.documentElement.setAttribute('data-theme', e.newValue);
            document.getElementById('themeToggle').innerHTML = e.newValue === 'dark' ? '&#9728;&#65039;' : '&#127769;';
        }
    });
    document.addEventListener('DOMContentLoaded', function() {
        var t = localStorage.getItem('fe-theme') || 'dark';
        document.getElementById('themeToggle').innerHTML = t === 'dark' ? '&#9728;&#65039;' : '&#127769;';
        var av = localStorage.getItem('fe-avatar-url');
        var navAv = document.getElementById('navAvatar');
        if (av && navAv) navAv.innerHTML = '<img src="'+av+'" style="width:100%;height:100%;border-radius:50%;object-fit:cover;" alt="Avatar">';
    });
</script>
</body>
</html>
