<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Cart — FoodExpress</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@400;600;700;800;900&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        *, *::before, *::after { margin:0; padding:0; box-sizing:border-box; }
        :root {
            --primary:#E23744; --orange:#FF6B35; --primary-glow:rgba(226,55,68,0.25);
            --orange-glow:rgba(255,107,53,0.2);
            --bg:#FAFAFA; --bg-gray:#F2F2F7; --bg-card:#FFFFFF;
            --text:#111; --text-muted:#6B6B6B; --text-light:#ADADAD;
            --border:#E4E4E7; --shadow:0 4px 20px rgba(0,0,0,0.08);
            --shadow-md:0 8px 32px rgba(0,0,0,0.10);
            --radius:18px; --radius-sm:10px; --radius-full:100px;
            --green:#1DB954; --nav-bg:rgba(250,250,250,0.88);
            --glass:rgba(255,255,255,0.7); --glass-border:rgba(255,255,255,0.9);
            --transition:all 0.3s cubic-bezier(0.4,0,0.2,1);
        }
        [data-theme="dark"] {
            --primary:#FF6B6B; --orange:#FFB347; --primary-glow:rgba(255,107,107,0.2);
            --bg:#0A0A0F; --bg-gray:#12121A; --bg-card:rgba(22,22,35,0.95);
            --text:#F0F0FF; --text-muted:#8888AA; --text-light:#55556A;
            --border:rgba(255,255,255,0.07); --shadow:0 4px 20px rgba(0,0,0,0.4);
            --shadow-md:0 8px 32px rgba(0,0,0,0.5);
            --green:#2ECC71; --nav-bg:rgba(10,10,15,0.88);
            --glass:rgba(22,22,35,0.8); --glass-border:rgba(255,255,255,0.06);
        }
        html { scroll-behavior: smooth; }
        body { font-family:'Inter',sans-serif; color:var(--text); background:var(--bg); min-height:100vh; transition:background 0.4s,color 0.4s; -webkit-font-smoothing:antialiased; }
        a { text-decoration:none; color:inherit; }

        /* NAV */
        .nav { position:sticky; top:0; z-index:999; background:var(--nav-bg); backdrop-filter:blur(24px) saturate(180%); -webkit-backdrop-filter:blur(24px) saturate(180%); border-bottom:1px solid var(--glass-border); padding:0 2rem; }
        .nav-inner { max-width:1320px; margin:0 auto; display:flex; align-items:center; gap:16px; height:70px; }
        .nav-logo { font-family:'Outfit',sans-serif; font-size:1.65rem; font-weight:900; letter-spacing:-1.5px; background:linear-gradient(135deg,var(--primary),var(--orange)); -webkit-background-clip:text; -webkit-text-fill-color:transparent; background-clip:text; }
        .nav-logo span { background:linear-gradient(135deg,var(--orange),#FFD700); -webkit-background-clip:text; -webkit-text-fill-color:transparent; background-clip:text; }
        .nav-actions { margin-left:auto; display:flex; align-items:center; gap:8px; }
        .theme-toggle { width:38px; height:38px; border-radius:50%; border:1.5px solid var(--border); background:var(--glass); font-size:1rem; cursor:pointer; display:flex; align-items:center; justify-content:center; transition:var(--transition); color:var(--text); }
        .theme-toggle:hover { border-color:var(--primary); transform:scale(1.1); }
        .btn-outline { display:flex; align-items:center; gap:5px; padding:8px 14px; background:var(--glass); backdrop-filter:blur(10px); border:1.5px solid var(--border); border-radius:var(--radius-full); font-size:0.82rem; font-weight:600; color:var(--text-muted); transition:var(--transition); }
        .btn-outline:hover { border-color:var(--primary); color:var(--primary); }

        /* PAGE */
        .page-wrap { max-width:1100px; margin:0 auto; padding:2.5rem 2rem 5rem; }
        .page-title { font-family:'Outfit',sans-serif; font-size:2rem; font-weight:900; margin-bottom:0.3rem; letter-spacing:-0.5px; }
        .page-sub { color:var(--text-muted); font-size:0.875rem; margin-bottom:2.5rem; }

        /* LAYOUT */
        .cart-layout { display:grid; grid-template-columns:1fr 360px; gap:2rem; align-items:start; }

        /* CART ITEMS */
        .cart-items-card { background:var(--bg-card); border:1px solid var(--border); border-radius:var(--radius); box-shadow:var(--shadow); overflow:hidden; }
        .cart-items-header { padding:16px 20px; border-bottom:1px solid var(--border); display:flex; align-items:center; justify-content:space-between; }
        .cart-items-title { font-family:'Outfit',sans-serif; font-size:1.05rem; font-weight:800; }
        .cart-restaurant { font-size:0.78rem; color:var(--text-muted); background:var(--bg-gray); padding:3px 10px; border-radius:var(--radius-full); border:1px solid var(--border); }

        .cart-item { display:flex; align-items:center; gap:14px; padding:16px 20px; border-bottom:1px solid var(--border); transition:background 0.2s; }
        .cart-item:last-child { border-bottom:none; }
        .cart-item:hover { background:var(--bg-gray); }
        .cart-item-img { width:64px; height:64px; border-radius:var(--radius-sm); object-fit:cover; flex-shrink:0; background:var(--bg-gray); }
        .cart-item-info { flex:1; min-width:0; }
        .cart-item-name { font-family:'Outfit',sans-serif; font-size:0.95rem; font-weight:800; color:var(--text); margin-bottom:3px; }
        .cart-item-price { font-size:0.78rem; color:var(--text-muted); }
        .cart-item-subtotal { font-family:'Outfit',sans-serif; font-size:0.95rem; font-weight:800; color:var(--text); margin-right:12px; white-space:nowrap; }

        /* Qty controls */
        .qty-controls { display:flex; align-items:center; gap:8px; }
        .qty-btn { width:30px; height:30px; border-radius:50%; border:1.5px solid var(--border); background:var(--bg-gray); font-size:1rem; font-weight:700; cursor:pointer; transition:var(--transition); display:flex; align-items:center; justify-content:center; color:var(--text); }
        .qty-btn:hover { border-color:var(--primary); color:var(--primary); background:var(--bg-card); }
        .qty-num { font-size:0.9rem; font-weight:700; min-width:22px; text-align:center; }

        .btn-remove { background:none; border:none; color:var(--text-light); cursor:pointer; font-size:1.1rem; transition:color 0.2s; padding:4px; }
        .btn-remove:hover { color:#FF5252; }

        /* EMPTY CART */
        .empty-cart { text-align:center; padding:5rem 2rem; }
        .empty-icon { font-size:4rem; margin-bottom:1rem; }
        .empty-cart h2 { font-family:'Outfit',sans-serif; font-size:1.6rem; font-weight:800; margin-bottom:0.5rem; }
        .empty-cart p { color:var(--text-muted); margin-bottom:2rem; }
        .btn-primary { display:inline-flex; align-items:center; gap:8px; padding:12px 28px; background:linear-gradient(135deg,var(--primary),var(--orange)); color:white; border-radius:var(--radius-full); font-weight:700; font-size:0.92rem; transition:var(--transition); box-shadow:0 4px 16px var(--primary-glow); }
        .btn-primary:hover { transform:translateY(-2px); box-shadow:0 8px 24px var(--primary-glow); }

        /* ORDER SUMMARY */
        .summary-card { background:var(--bg-card); border:1px solid var(--border); border-radius:var(--radius); box-shadow:var(--shadow-md); overflow:hidden; position:sticky; top:86px; }
        .summary-header { padding:16px 20px; background:linear-gradient(135deg,var(--primary),var(--orange)); color:white; }
        .summary-title { font-family:'Outfit',sans-serif; font-size:1.05rem; font-weight:800; }
        .summary-body { padding:20px; }
        .summary-row { display:flex; justify-content:space-between; align-items:center; font-size:0.875rem; color:var(--text-muted); margin-bottom:10px; }
        .summary-row.total { font-size:1.05rem; font-weight:700; color:var(--text); border-top:1px solid var(--border); padding-top:12px; margin-top:4px; }
        .summary-total-amount { font-family:'Outfit',sans-serif; font-size:1.3rem; font-weight:900; background:linear-gradient(135deg,var(--primary),var(--orange)); -webkit-background-clip:text; -webkit-text-fill-color:transparent; background-clip:text; }
        .btn-checkout { width:100%; padding:14px; background:linear-gradient(135deg,var(--primary),var(--orange)); color:white; border:none; border-radius:var(--radius-full); font-family:'Outfit',sans-serif; font-size:1rem; font-weight:800; cursor:pointer; transition:var(--transition); box-shadow:0 4px 16px var(--primary-glow); display:flex; align-items:center; justify-content:center; gap:8px; margin-top:14px; }
        .btn-checkout:hover { transform:translateY(-2px); box-shadow:0 8px 24px var(--primary-glow); filter:brightness(1.05); }
        .btn-continue { width:100%; padding:11px; background:var(--glass); border:1.5px solid var(--border); border-radius:var(--radius-full); font-family:'Outfit',sans-serif; font-size:0.88rem; font-weight:700; cursor:pointer; transition:var(--transition); color:var(--text-muted); margin-top:10px; display:flex; align-items:center; justify-content:center; gap:6px; }
        .btn-continue:hover { border-color:var(--primary); color:var(--primary); }

        .cart-msg { padding:10px 16px; background:rgba(255,107,53,0.1); border:1px solid rgba(255,107,53,0.2); border-radius:var(--radius-sm); font-size:0.82rem; color:var(--orange); margin-bottom:1rem; }

        @media (max-width:900px) { .cart-layout { grid-template-columns:1fr; } .summary-card { position:static; } }
        @media (max-width:600px) { .page-wrap { padding:1.5rem 1rem 4rem; } .cart-item { flex-wrap:wrap; } }
    </style>
</head>
<body>
<script>(function(){var t=localStorage.getItem('fe-theme')||'dark';document.documentElement.setAttribute('data-theme',t);})();</script>

<!-- NAV -->
<nav class="nav">
    <div class="nav-inner">
        <a href="${pageContext.request.contextPath}/home" class="nav-logo">Food<span>Express</span></a>
        <div class="nav-actions">
            <button class="theme-toggle" id="themeToggle" onclick="toggleTheme()">&#9728;&#65039;</button>
            <a href="${pageContext.request.contextPath}/home" class="btn-outline">&#127968; Home</a>
            <a href="${pageContext.request.contextPath}/order-history" class="btn-outline">&#129534; Orders</a>
        </div>
    </div>
</nav>

<div class="page-wrap">
    <div class="page-title">&#128722; Your Cart</div>
    <c:choose>
        <c:when test="${not empty cart and cart.itemCount gt 0}">
            <div class="page-sub">Ordering from <strong><c:out value="${cart.restaurantName}"/></strong></div>

            <c:if test="${not empty sessionScope.cartMessage}">
                <div class="cart-msg">&#9888; <c:out value="${sessionScope.cartMessage}"/></div>
                <c:remove var="cartMessage" scope="session"/>
            </c:if>

            <div class="cart-layout">
                <!-- Items -->
                <div class="cart-items-card">
                    <div class="cart-items-header">
                        <div class="cart-items-title">&#127869; Items in your cart</div>
                        <span class="cart-restaurant">&#127968; <c:out value="${cart.restaurantName}"/></span>
                    </div>
                    <c:forEach var="entry" items="${cart.items}">
                        <c:set var="item" value="${entry.value}"/>
                        <div class="cart-item">
                            <img class="cart-item-img"
                                 src="<c:out value='${item.imageUrl}'/>"
                                 alt="<c:out value='${item.name}'/>"
                                 onerror="this.onerror=null;this.src='https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=200&auto=format'">
                            <div class="cart-item-info">
                                <div class="cart-item-name"><c:out value="${item.name}"/></div>
                                <div class="cart-item-price">&#8377;<fmt:formatNumber value="${item.price}" maxFractionDigits="0"/> each</div>
                            </div>
                            <div class="cart-item-subtotal">&#8377;<fmt:formatNumber value="${item.subtotal}" maxFractionDigits="0"/></div>
                            <div class="qty-controls">
                                <form method="post" action="${pageContext.request.contextPath}/cart" style="display:inline">
                                    <input type="hidden" name="action" value="update">
                                    <input type="hidden" name="menuId" value="${item.menuId}">
                                    <c:set var="qtyDec" value="${item.quantity - 1}"/>
                                    <input type="hidden" name="quantity" value="${qtyDec}">
                                    <input type="hidden" name="redirectTo" value="/cart">
                                    <button type="submit" class="qty-btn">&#8722;</button>
                                </form>
                                <span class="qty-num"><c:out value="${item.quantity}"/></span>
                                <form method="post" action="${pageContext.request.contextPath}/cart" style="display:inline">
                                    <input type="hidden" name="action" value="update">
                                    <input type="hidden" name="menuId" value="${item.menuId}">
                                    <c:set var="qtyInc" value="${item.quantity + 1}"/>
                                    <input type="hidden" name="quantity" value="${qtyInc}">
                                    <input type="hidden" name="redirectTo" value="/cart">
                                    <button type="submit" class="qty-btn">+</button>
                                </form>
                            </div>
                            <form method="post" action="${pageContext.request.contextPath}/cart">
                                <input type="hidden" name="action" value="remove">
                                <input type="hidden" name="menuId" value="${item.menuId}">
                                <input type="hidden" name="redirectTo" value="/cart">
                                <button type="submit" class="btn-remove" title="Remove item">&#128465;</button>
                            </form>
                        </div>
                    </c:forEach>
                </div>

                <!-- Summary -->
                <div class="summary-card">
                    <div class="summary-header">
                        <div class="summary-title">&#129534; Order Summary</div>
                    </div>
                    <div class="summary-body">
                        <div class="summary-row">
                            <span>Subtotal (<c:out value="${cart.itemCount}"/> items)</span>
                            <span>&#8377;<fmt:formatNumber value="${cart.total}" maxFractionDigits="0"/></span>
                        </div>
                        <div class="summary-row">
                            <span>Delivery Fee</span>
                            <span style="color:var(--green);font-weight:600;">FREE</span>
                        </div>
                        <div class="summary-row">
                            <span>GST (5%)</span>
                            <c:set var="gstAmt" value="${cart.total * 0.05}"/>
                            <span>&#8377;<fmt:formatNumber value="${gstAmt}" maxFractionDigits="0"/></span>
                        </div>
                        <div class="summary-row total">
                            <span>Total</span>
                            <c:set var="grandTotal" value="${cart.total * 1.05}"/>
                            <span class="summary-total-amount">&#8377;<fmt:formatNumber value="${grandTotal}" maxFractionDigits="0"/></span>
                        </div>
                        <a href="${pageContext.request.contextPath}/checkout">
                            <button class="btn-checkout">&#9989; Proceed to Checkout</button>
                        </a>
                        <a href="${pageContext.request.contextPath}/home">
                            <button class="btn-continue">&#8592; Continue Shopping</button>
                        </a>
                    </div>
                </div>
            </div>
        </c:when>
        <c:otherwise>
            <div class="empty-cart">
                <div class="empty-icon">&#128722;</div>
                <h2>Your cart is empty</h2>
                <p>Looks like you haven't added anything yet. Browse restaurants and order!</p>
                <a href="${pageContext.request.contextPath}/home" class="btn-primary">&#127869; Browse Restaurants</a>
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
    (function() {
        var t = localStorage.getItem('fe-theme') || 'dark';
        document.getElementById('themeToggle').innerHTML = t === 'dark' ? '&#9728;&#65039;' : '&#127769;';
    })();
</script>
</body>
</html>
