<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FoodExpress &mdash; Order History</title>
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
        .nav-link.active { background: rgba(226,55,68,0.1); color: var(--primary); }
        .nav-actions { margin-left: auto; display: flex; align-items: center; gap: 8px; }
        .theme-btn { width: 38px; height: 38px; border-radius: 50%; border: 1.5px solid var(--border); background: var(--glass); backdrop-filter: blur(10px); font-size: 1rem; cursor: pointer; color: var(--text); transition: var(--transition); display: flex; align-items: center; justify-content: center; }
        .theme-btn:hover { border-color: var(--primary); transform: scale(1.1) rotate(15deg); }
        .cart-btn { display: flex; align-items: center; gap: 6px; padding: 9px 18px; background: linear-gradient(135deg, var(--primary), var(--orange)); color: white; border-radius: var(--radius-full); font-weight: 700; font-size: 0.84rem; transition: var(--transition); position: relative; box-shadow: 0 4px 16px var(--primary-glow); }
        .cart-btn:hover { transform: translateY(-2px); filter: brightness(1.05); }
        .cart-count { position: absolute; top: -5px; right: -5px; background: var(--orange); color: white; width: 20px; height: 20px; border-radius: 50%; font-size: 0.65rem; font-weight: 800; display: flex; align-items: center; justify-content: center; border: 2px solid var(--bg); }
        .nav-avatar { width: 36px; height: 36px; border-radius: 50%; background: linear-gradient(135deg, var(--primary), var(--orange)); color: white; font-size: 0.85rem; font-weight: 800; display: flex; align-items: center; justify-content: center; text-transform: uppercase; font-family: 'Outfit', sans-serif; flex-shrink: 0; cursor: pointer; transition: var(--transition); border: 2px solid transparent; overflow: hidden; }
        .nav-avatar:hover { border-color: var(--primary); transform: scale(1.05); }

        /* MAIN */
        .main { max-width: 960px; margin: 0 auto; padding: 2.5rem 2rem 5rem; }
        .page-title { font-family: 'Outfit', sans-serif; font-size: 2rem; font-weight: 900; margin-bottom: 0.4rem; letter-spacing: -0.5px; }
        .page-sub { color: var(--text-muted); font-size: 0.9rem; margin-bottom: 2rem; }

        /* STATS BAR */
        .stats-bar { display: flex; gap: 0; background: var(--bg-card); border: 1px solid var(--border); border-radius: var(--radius); box-shadow: var(--shadow); overflow: hidden; margin-bottom: 2rem; }
        .stat-item { flex: 1; padding: 1.4rem 1.5rem; border-right: 1px solid var(--border); transition: var(--transition); }
        .stat-item:last-child { border-right: none; }
        .stat-item:hover { background: var(--bg-gray); }
        .stat-val { font-family: 'Outfit', sans-serif; font-size: 1.8rem; font-weight: 900; background: linear-gradient(135deg, var(--primary), var(--orange)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; margin-bottom: 2px; }
        .stat-lbl { font-size: 0.74rem; color: var(--text-muted); text-transform: uppercase; letter-spacing: 0.5px; font-weight: 600; }

        /* ORDER CARD */
        .order-card { background: var(--bg-card); border: 1px solid var(--border); border-radius: var(--radius); box-shadow: var(--shadow); margin-bottom: 1.4rem; overflow: hidden; transition: var(--transition); animation: fadeUp 0.5s ease both; }
        .order-card:hover { transform: translateY(-4px); box-shadow: var(--shadow-lg); border-color: rgba(226,55,68,0.25); }
        @keyframes fadeUp { from { opacity: 0; transform: translateY(20px); } to { opacity: 1; transform: translateY(0); } }

        .order-card-head { display: flex; align-items: center; justify-content: space-between; flex-wrap: wrap; gap: 10px; padding: 1.2rem 1.5rem; border-bottom: 1px solid var(--border); background: var(--bg-gray); }
        .order-id { font-family: 'Outfit', sans-serif; font-weight: 800; font-size: 1rem; }
        .order-id span { color: var(--primary); }
        .order-meta { display: flex; gap: 14px; flex-wrap: wrap; font-size: 0.8rem; color: var(--text-muted); margin-top: 4px; }
        .order-meta span { display: flex; align-items: center; gap: 4px; }

        /* STATUS BADGE */
        .status-badge { display: inline-flex; align-items: center; gap: 5px; padding: 5px 14px; border-radius: var(--radius-full); font-size: 0.74rem; font-weight: 800; letter-spacing: 0.5px; text-transform: uppercase; border: 1.5px solid; }
        .status-PLACED          { background: rgba(68,138,255,0.1); color: #448AFF; border-color: rgba(68,138,255,0.3); }
        .status-CONFIRMED       { background: rgba(255,179,71,0.1); color: #E65100; border-color: rgba(255,152,0,0.3); }
        .status-PREPARING       { background: rgba(255,152,0,0.1); color: #E65100; border-color: rgba(255,152,0,0.3); }
        .status-OUT_FOR_DELIVERY{ background: rgba(68,138,255,0.1); color: #1565C0; border-color: rgba(68,138,255,0.3); }
        .status-DELIVERED       { background: rgba(29,185,84,0.1); color: #1DB954; border-color: rgba(29,185,84,0.3); }
        .status-CANCELLED       { background: rgba(198,40,40,0.1); color: #C62828; border-color: rgba(198,40,40,0.3); }

        /* CARD BODY */
        .order-card-body { padding: 1.2rem 1.5rem; }
        .order-rest-name { font-family: 'Outfit', sans-serif; font-size: 1.1rem; font-weight: 800; margin-bottom: 12px; display: flex; align-items: center; gap: 10px; }
        .order-rest-name small { font-size: 0.78rem; color: var(--text-muted); font-weight: 400; font-family: 'Inter', sans-serif; }
        .order-items-list { border: 1px solid var(--border); border-radius: var(--radius-sm); overflow: hidden; margin-bottom: 12px; }
        .order-item-row { display: flex; justify-content: space-between; align-items: center; padding: 9px 14px; font-size: 0.86rem; color: var(--text-muted); border-bottom: 1px solid var(--border); transition: background 0.2s; }
        .order-item-row:last-child { border-bottom: none; }
        .order-item-row:hover { background: var(--bg-gray); }
        .item-qty-badge { background: linear-gradient(135deg, var(--primary), var(--orange)); color: white; font-size: 0.68rem; font-weight: 800; padding: 2px 7px; border-radius: 20px; margin-right: 8px; }
        .item-price-val { font-weight: 700; color: var(--text); }
        .order-address { font-size: 0.81rem; color: var(--text-muted); display: flex; align-items: flex-start; gap: 5px; }

        /* CARD FOOTER */
        .order-card-foot { display: flex; align-items: center; justify-content: space-between; flex-wrap: wrap; gap: 10px; padding: 1rem 1.5rem; border-top: 1px solid var(--border); background: var(--bg-gray); }
        .order-total-lbl { font-size: 0.78rem; color: var(--text-muted); margin-bottom: 2px; }
        .order-total-amt { font-family: 'Outfit', sans-serif; font-size: 1.3rem; font-weight: 900; background: linear-gradient(135deg, var(--primary), var(--orange)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; }
        .payment-chip { display: inline-flex; align-items: center; gap: 4px; padding: 4px 12px; background: var(--bg-card); border: 1px solid var(--border); border-radius: var(--radius-full); font-size: 0.74rem; color: var(--text-muted); }
        .reorder-btn { display: inline-flex; align-items: center; gap: 6px; padding: 9px 20px; background: linear-gradient(135deg, var(--primary), var(--orange)); color: white; border-radius: var(--radius-full); font-size: 0.84rem; font-weight: 700; transition: var(--transition); box-shadow: 0 4px 12px var(--primary-glow); }
        .reorder-btn:hover { transform: scale(1.04); filter: brightness(1.05); }

        /* EMPTY */
        .empty-state { text-align: center; padding: 5rem 2rem; }
        .empty-icon { font-size: 5rem; margin-bottom: 1.5rem; opacity: 0.5; }
        .empty-state h2 { font-family: 'Outfit', sans-serif; font-size: 1.7rem; font-weight: 800; margin-bottom: 0.5rem; }
        .empty-state p { color: var(--text-muted); margin-bottom: 2rem; max-width: 380px; margin-left: auto; margin-right: auto; }
        .browse-btn { display: inline-flex; align-items: center; gap: 8px; padding: 13px 30px; background: linear-gradient(135deg, var(--primary), var(--orange)); color: white; border-radius: var(--radius-full); font-family: 'Outfit', sans-serif; font-weight: 800; font-size: 0.95rem; transition: var(--transition); box-shadow: 0 4px 16px var(--primary-glow); }
        .browse-btn:hover { transform: translateY(-2px); filter: brightness(1.05); }
    </style>
</head>
<body>
<script>(function() { var t = localStorage.getItem('fe-theme') || 'dark'; document.documentElement.setAttribute('data-theme', t); })();</script>

<nav class="nav">
    <div class="nav-inner">
        <a href="${pageContext.request.contextPath}/home" class="nav-logo">FoodExpress</a>
        <div class="nav-links">
            <a href="${pageContext.request.contextPath}/home" class="nav-link">&#127968; Home</a>
            <a href="${pageContext.request.contextPath}/order-history" class="nav-link active">&#129534; Orders</a>
            <a href="${pageContext.request.contextPath}/cart" class="nav-link">&#128722; Cart</a>
        </div>
        <div class="nav-actions">
            <button class="theme-btn" id="themeToggle" onclick="toggleTheme()">&#127769;</button>
            <a href="${pageContext.request.contextPath}/cart" class="cart-btn">
                &#128722; Cart
                <c:if test="${not empty sessionScope.cartCount && sessionScope.cartCount > 0}">
                    <span class="cart-count"><c:out value="${sessionScope.cartCount}"/></span>
                </c:if>
            </a>
            <a href="${pageContext.request.contextPath}/profile.jsp" class="nav-avatar" id="navAvatar">
                <c:out value="${fn:substring(sessionScope.userName, 0, 1)}"/>
            </a>
        </div>
    </div>
</nav>

<div class="main">
    <div class="page-title">&#129534; Order History</div>
    <div class="page-sub">All your past orders in one place</div>

    <c:choose>
        <c:when test="${not empty orderItemsMap}">
            <div class="stats-bar">
                <div class="stat-item">
                    <div class="stat-val"><c:out value="${orderCount}"/></div>
                    <div class="stat-lbl">Total Orders</div>
                </div>
                <div class="stat-item">
                    <div class="stat-val" style="background:linear-gradient(135deg,#1DB954,#2ECC71);-webkit-background-clip:text;-webkit-text-fill-color:transparent;">
                        <c:set var="deliveredCount" value="0"/>
                        <c:forEach var="entry" items="${orderItemsMap}">
                            <c:if test="${entry.key.status == 'DELIVERED'}"><c:set var="deliveredCount" value="${deliveredCount + 1}"/></c:if>
                        </c:forEach>
                        <c:out value="${deliveredCount}"/>
                    </div>
                    <div class="stat-lbl">Delivered</div>
                </div>
                <div class="stat-item">
                    <div class="stat-val">
                        <c:set var="grandTotal" value="0"/>
                        <c:forEach var="entry" items="${orderItemsMap}"><c:set var="grandTotal" value="${grandTotal + entry.key.totalAmount}"/></c:forEach>
                        &#8377;<fmt:formatNumber value="${grandTotal}" pattern="#,##0"/>
                    </div>
                    <div class="stat-lbl">Total Spent</div>
                </div>
            </div>

            <c:forEach var="entry" items="${orderItemsMap}" varStatus="status">
                <c:set var="order" value="${entry.key}"/>
                <c:set var="items" value="${entry.value}"/>
                <div class="order-card" style="animation-delay:${status.index * 0.06}s">
                    <div class="order-card-head">
                        <div>
                            <div class="order-id">Order <span>#<c:out value="${order.orderId}"/></span></div>
                            <div class="order-meta">
                                <span>&#127978; <c:out value="${order.restaurantName}"/></span>
                                <span>&#128197; <fmt:formatDate value="${order.orderDate}" pattern="dd MMM yyyy, hh:mm a"/></span>
                                <span>&#128179; <c:out value="${order.paymentMode}"/></span>
                            </div>
                        </div>
                        <span class="status-badge status-${order.status}">
                            <c:choose>
                                <c:when test="${order.status == 'PLACED'}">&#128203;</c:when>
                                <c:when test="${order.status == 'CONFIRMED'}">&#9989;</c:when>
                                <c:when test="${order.status == 'PREPARING'}">&#128104;&#8205;&#127859;</c:when>
                                <c:when test="${order.status == 'OUT_FOR_DELIVERY'}">&#128757;</c:when>
                                <c:when test="${order.status == 'DELIVERED'}">&#127881;</c:when>
                                <c:when test="${order.status == 'CANCELLED'}">&#10060;</c:when>
                                <c:otherwise>&#128230;</c:otherwise>
                            </c:choose>
                            <c:out value="${order.status}"/>
                        </span>
                    </div>
                    <div class="order-card-body">
                        <div class="order-rest-name">
                            <c:out value="${order.restaurantName}"/>
                            <small><c:out value="${fn:length(items)}"/> item(s)</small>
                        </div>
                        <div class="order-items-list">
                            <c:forEach var="item" items="${items}">
                                <div class="order-item-row">
                                    <span>
                                        <span class="item-qty-badge">&#215;<c:out value="${item.quantity}"/></span>
                                        <c:out value="${item.menuName}"/>
                                    </span>
                                    <span class="item-price-val">&#8377;<fmt:formatNumber value="${item.price * item.quantity}" pattern="#,##0"/></span>
                                </div>
                            </c:forEach>
                        </div>
                        <div class="order-address">&#128205; <c:out value="${order.address}"/></div>
                    </div>
                    <div class="order-card-foot">
                        <div>
                            <div class="order-total-lbl">Order Total</div>
                            <div class="order-total-amt">&#8377;<fmt:formatNumber value="${order.totalAmount}" pattern="#,##0"/></div>
                        </div>
                        <div style="display:flex;align-items:center;gap:10px;">
                            <span class="payment-chip">&#128179; <c:out value="${order.paymentMode}"/></span>
                            <a href="${pageContext.request.contextPath}/menu?restaurantId=${order.restaurantId}" class="reorder-btn">&#128257; Reorder</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </c:when>
        <c:otherwise>
            <div class="empty-state">
                <div class="empty-icon">&#128461;</div>
                <h2>No orders yet</h2>
                <p>You haven't placed any orders. Explore 100+ restaurants and order something delicious!</p>
                <a href="${pageContext.request.contextPath}/home" class="browse-btn">&#127869; Browse Restaurants</a>
            </div>
        </c:otherwise>
    </c:choose>
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
