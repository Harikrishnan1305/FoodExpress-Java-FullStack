<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Order from ${restaurant.name} — Browse menu items and add to cart.">
    <title><c:out value="${restaurant.name}"/> — FoodExpress Menu</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700;800;900&family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        *, *::before, *::after { margin:0; padding:0; box-sizing:border-box; }

        :root {
            --primary: #E23744;
            --primary-dark: #C0392B;
            --primary-glow: rgba(226,55,68,0.25);
            --orange: #FF6B35;
            --orange-glow: rgba(255,107,53,0.2);
            --bg: #FAFAFA;
            --bg-gray: #F2F2F7;
            --bg-card: #FFFFFF;
            --text: #111111;
            --text-muted: #6B6B6B;
            --text-light: #ADADAD;
            --border: #E4E4E7;
            --shadow-sm: 0 1px 4px rgba(0,0,0,0.05);
            --shadow: 0 4px 20px rgba(0,0,0,0.08);
            --shadow-md: 0 8px 32px rgba(0,0,0,0.10);
            --shadow-lg: 0 16px 56px rgba(0,0,0,0.14);
            --radius: 18px;
            --radius-sm: 10px;
            --radius-xs: 6px;
            --radius-full: 100px;
            --green: #1DB954;
            --green-bg: rgba(29,185,84,0.1);
            --nav-bg: rgba(250,250,250,0.88);
            --glass: rgba(255,255,255,0.7);
            --glass-border: rgba(255,255,255,0.9);
            --transition: all 0.3s cubic-bezier(0.4,0,0.2,1);
        }

        [data-theme="dark"] {
            --primary: #FF6B6B;
            --primary-dark: #E55A5A;
            --primary-glow: rgba(255,107,107,0.2);
            --orange: #FFB347;
            --bg: #0A0A0F;
            --bg-gray: #12121A;
            --bg-card: rgba(22,22,35,0.95);
            --text: #F0F0FF;
            --text-muted: #8888AA;
            --text-light: #55556A;
            --border: rgba(255,255,255,0.07);
            --shadow-sm: 0 1px 4px rgba(0,0,0,0.3);
            --shadow: 0 4px 20px rgba(0,0,0,0.4);
            --shadow-md: 0 8px 32px rgba(0,0,0,0.5);
            --shadow-lg: 0 16px 56px rgba(0,0,0,0.6);
            --green: #2ECC71;
            --green-bg: rgba(46,204,113,0.1);
            --nav-bg: rgba(10,10,15,0.88);
            --glass: rgba(22,22,35,0.8);
            --glass-border: rgba(255,255,255,0.06);
        }

        html { scroll-behavior: smooth; }
        body {
            font-family: 'Inter', sans-serif;
            color: var(--text); background: var(--bg);
            transition: background 0.4s, color 0.4s;
            overflow-x: hidden;
            -webkit-font-smoothing: antialiased;
        }
        a { text-decoration: none; color: inherit; }
        img { max-width: 100%; display: block; }

        /* ── NAVBAR ── */
        .nav {
            position: sticky; top: 0; z-index: 999;
            background: var(--nav-bg);
            backdrop-filter: blur(24px) saturate(180%);
            -webkit-backdrop-filter: blur(24px) saturate(180%);
            border-bottom: 1px solid var(--glass-border);
            padding: 0 2rem;
        }
        .nav-inner {
            max-width: 1320px; margin: 0 auto;
            display: flex; align-items: center; gap: 16px;
            height: 70px;
        }
        .nav-logo {
            font-family: 'Outfit', sans-serif;
            font-size: 1.65rem; font-weight: 900;
            letter-spacing: -1.5px; flex-shrink: 0;
            background: linear-gradient(135deg, var(--primary), var(--orange));
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
            background-clip: text;
        }
        .nav-logo span {
            background: linear-gradient(135deg, var(--orange), #FFD700);
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
            background-clip: text;
        }
        .nav-breadcrumb {
            display: flex; align-items: center; gap: 8px;
            font-size: 0.85rem; color: var(--text-muted);
            flex: 1;
        }
        .nav-breadcrumb .sep { color: var(--text-light); }
        .nav-breadcrumb .current { color: var(--text); font-weight: 600; }
        .nav-actions { margin-left: auto; display: flex; align-items: center; gap: 8px; flex-shrink: 0; }
        .theme-toggle {
            width: 38px; height: 38px; border-radius: 50%;
            border: 1.5px solid var(--border);
            background: var(--glass); backdrop-filter: blur(10px);
            font-size: 1rem; cursor: pointer;
            display: flex; align-items: center; justify-content: center;
            transition: var(--transition); color: var(--text);
        }
        .theme-toggle:hover { border-color: var(--primary); transform: scale(1.1) rotate(15deg); }
        .nav-cart-btn {
            position: relative;
            display: flex; align-items: center; gap: 6px;
            padding: 9px 18px;
            background: linear-gradient(135deg, var(--primary), var(--orange));
            color: white; border-radius: var(--radius-full);
            font-weight: 700; font-size: 0.84rem;
            cursor: pointer; transition: var(--transition);
            box-shadow: 0 4px 16px var(--primary-glow);
        }
        .nav-cart-btn:hover { transform: translateY(-2px); box-shadow: 0 8px 24px var(--primary-glow); }
        .cart-badge {
            position: absolute; top: -5px; right: -5px;
            background: var(--orange); color: white;
            width: 20px; height: 20px; border-radius: 50%;
            font-size: 0.65rem; font-weight: 800;
            display: flex; align-items: center; justify-content: center;
            border: 2px solid var(--bg);
            animation: pulse 2s infinite;
        }
        @keyframes pulse { 0%,100%{box-shadow:0 0 0 0 var(--orange-glow);} 50%{box-shadow:0 0 0 6px transparent;} }
        .btn-back {
            display: flex; align-items: center; gap: 5px;
            padding: 8px 14px;
            background: var(--glass); backdrop-filter: blur(10px);
            border: 1.5px solid var(--border);
            border-radius: var(--radius-full);
            font-size: 0.82rem; font-weight: 600; color: var(--text-muted);
            transition: var(--transition); cursor: pointer;
        }
        .btn-back:hover { border-color: var(--primary); color: var(--primary); }

        /* ── RESTAURANT HERO ── */
        .rest-hero {
            position: relative; overflow: hidden;
            height: 280px;
            background: linear-gradient(135deg, #0D0D0D, #1a0808);
        }
        .rest-hero-img {
            width: 100%; height: 100%; object-fit: cover;
            opacity: 0.45;
            transition: opacity 0.3s;
        }
        .rest-hero-overlay {
            position: absolute; inset: 0;
            background: linear-gradient(to top, rgba(0,0,0,0.88) 0%, rgba(0,0,0,0.3) 60%, transparent 100%);
        }
        .rest-hero-content {
            position: absolute; bottom: 0; left: 0; right: 0;
            max-width: 1320px; margin: 0 auto;
            padding: 2rem 2rem 1.8rem;
        }
        .rest-hero-tag {
            display: inline-flex; align-items: center; gap: 5px;
            background: rgba(255,255,255,0.1);
            border: 1px solid rgba(255,255,255,0.2);
            backdrop-filter: blur(8px);
            color: rgba(255,255,255,0.85);
            font-size: 0.75rem; font-weight: 600;
            padding: 4px 12px; border-radius: var(--radius-full);
            margin-bottom: 10px; letter-spacing: 0.3px;
        }
        .rest-hero-name {
            font-family: 'Outfit', sans-serif;
            font-size: clamp(1.8rem, 4vw, 2.6rem);
            font-weight: 900; color: white;
            line-height: 1.1; letter-spacing: -0.5px;
            margin-bottom: 0.6rem;
        }
        .rest-hero-meta {
            display: flex; align-items: center; gap: 14px;
            flex-wrap: wrap;
        }
        .hero-meta-item {
            display: flex; align-items: center; gap: 5px;
            font-size: 0.82rem; color: rgba(255,255,255,0.65);
        }
        .hero-rating {
            background: var(--green); color: white;
            padding: 3px 10px; border-radius: var(--radius-xs);
            font-size: 0.78rem; font-weight: 800;
            display: flex; align-items: center; gap: 3px;
        }

        /* ── MAIN LAYOUT ── */
        .main-layout {
            max-width: 1320px; margin: 0 auto;
            padding: 2rem 2rem 4rem;
            display: grid;
            grid-template-columns: 1fr 340px;
            gap: 2rem;
            align-items: start;
        }

        /* ── MENU SECTION ── */
        .menu-section-title {
            font-family: 'Outfit', sans-serif;
            font-size: 1.4rem; font-weight: 900;
            color: var(--text); margin-bottom: 1.4rem;
            letter-spacing: -0.3px;
            display: flex; align-items: center; gap: 10px;
        }
        .menu-count {
            font-size: 0.78rem; color: var(--text-light);
            background: var(--bg-gray); padding: 3px 10px;
            border-radius: var(--radius-full);
            border: 1px solid var(--border);
            font-family: 'Inter', sans-serif; font-weight: 500;
        }

        /* Menu Grid */
        .menu-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 1.2rem;
        }

        /* Menu Card */
        .menu-card {
            background: var(--bg-card);
            border: 1px solid var(--border);
            border-radius: var(--radius);
            overflow: hidden;
            transition: var(--transition);
            box-shadow: var(--shadow-sm);
            display: flex; flex-direction: column;
            animation: fadeUp 0.4s ease both;
        }
        @keyframes fadeUp { from{opacity:0;transform:translateY(20px);} to{opacity:1;transform:translateY(0);} }
        .menu-card:hover {
            transform: translateY(-4px);
            box-shadow: var(--shadow-md);
            border-color: var(--primary);
        }

        .menu-card-img {
            height: 160px; overflow: hidden; position: relative;
            background: var(--bg-gray);
        }
        .menu-card-img img {
            width: 100%; height: 100%; object-fit: cover;
            transition: transform 0.5s ease;
        }
        .menu-card:hover .menu-card-img img { transform: scale(1.08); }

        .menu-card-badge {
            position: absolute; top: 10px; left: 10px;
            padding: 3px 9px; border-radius: var(--radius-xs);
            font-size: 0.68rem; font-weight: 800;
        }
        .badge-veg {
            background: rgba(29,185,84,0.9); color: white;
        }
        .badge-nonveg {
            background: rgba(226,55,68,0.9); color: white;
        }

        .menu-card-rating-pill {
            position: absolute; top: 10px; right: 10px;
            background: rgba(0,0,0,0.6); backdrop-filter: blur(6px);
            color: #FFD700; font-size: 0.72rem; font-weight: 800;
            padding: 3px 8px; border-radius: var(--radius-full);
            border: 1px solid rgba(255,255,255,0.1);
        }

        .menu-card-body {
            padding: 14px; flex: 1;
            display: flex; flex-direction: column; gap: 6px;
        }
        .menu-card-name {
            font-family: 'Outfit', sans-serif;
            font-size: 0.96rem; font-weight: 800;
            color: var(--text); line-height: 1.25;
        }
        .menu-card-desc {
            font-size: 0.76rem; color: var(--text-muted);
            line-height: 1.5; flex: 1;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
        .menu-card-footer {
            display: flex; align-items: center; justify-content: space-between;
            padding-top: 10px; border-top: 1px solid var(--border);
            margin-top: auto;
        }
        .menu-price {
            font-family: 'Outfit', sans-serif;
            font-size: 1.1rem; font-weight: 900;
            color: var(--text);
        }
        .menu-price .currency { font-size: 0.8rem; vertical-align: super; }

        /* Add to cart button */
        .btn-add {
            display: flex; align-items: center; gap: 5px;
            padding: 8px 14px;
            background: linear-gradient(135deg, var(--primary), var(--orange));
            color: white; border: none;
            border-radius: var(--radius-full);
            font-family: 'Outfit', sans-serif;
            font-size: 0.8rem; font-weight: 700;
            cursor: pointer; transition: var(--transition);
            box-shadow: 0 2px 10px var(--primary-glow);
        }
        .btn-add:hover { transform: scale(1.05); box-shadow: 0 4px 16px var(--primary-glow); }
        .btn-add:active { transform: scale(0.97); }
        .btn-add.added {
            background: linear-gradient(135deg, var(--green), #27AE60);
            box-shadow: 0 2px 10px var(--green-bg);
        }

        /* Empty menu */
        .empty-menu {
            text-align: center; padding: 4rem 2rem;
            grid-column: 1/-1;
        }
        .empty-icon { font-size: 3.5rem; margin-bottom: 1rem; }
        .empty-menu h3 {
            font-family: 'Outfit', sans-serif;
            font-size: 1.3rem; font-weight: 800; color: var(--text); margin-bottom: 0.4rem;
        }
        .empty-menu p { color: var(--text-muted); font-size: 0.875rem; }

        /* ── CART SIDEBAR ── */
        .cart-sidebar {
            position: sticky; top: 86px;
            background: var(--bg-card);
            border: 1px solid var(--border);
            border-radius: var(--radius);
            box-shadow: var(--shadow-md);
            overflow: hidden;
        }
        .cart-sidebar-header {
            padding: 16px 20px;
            background: linear-gradient(135deg, var(--primary), var(--orange));
            color: white;
            display: flex; align-items: center; justify-content: space-between;
        }
        .cart-sidebar-title {
            font-family: 'Outfit', sans-serif;
            font-size: 1.05rem; font-weight: 800;
        }
        .cart-count-badge {
            background: rgba(255,255,255,0.25);
            font-size: 0.78rem; font-weight: 700;
            padding: 3px 10px; border-radius: var(--radius-full);
        }
        .cart-body { padding: 16px; max-height: 400px; overflow-y: auto; }
        .cart-body::-webkit-scrollbar { width: 4px; }
        .cart-body::-webkit-scrollbar-thumb { background: var(--border); border-radius: 4px; }

        .cart-empty-msg {
            text-align: center; padding: 2rem 1rem;
            color: var(--text-muted); font-size: 0.85rem;
        }
        .cart-empty-icon { font-size: 2.5rem; margin-bottom: 0.5rem; }

        .cart-item {
            display: flex; align-items: center; gap: 10px;
            padding: 10px 0; border-bottom: 1px solid var(--border);
        }
        .cart-item:last-child { border-bottom: none; }
        .cart-item-img {
            width: 48px; height: 48px; border-radius: var(--radius-xs);
            object-fit: cover; flex-shrink: 0;
            background: var(--bg-gray);
        }
        .cart-item-info { flex: 1; min-width: 0; }
        .cart-item-name {
            font-size: 0.83rem; font-weight: 700; color: var(--text);
            white-space: nowrap; overflow: hidden; text-overflow: ellipsis;
        }
        .cart-item-price { font-size: 0.76rem; color: var(--text-muted); margin-top: 2px; }

        /* Qty controls */
        .qty-controls { display: flex; align-items: center; gap: 6px; }
        .qty-btn {
            width: 26px; height: 26px; border-radius: 50%;
            border: 1.5px solid var(--border);
            background: var(--bg-gray);
            font-size: 0.9rem; font-weight: 700;
            cursor: pointer; transition: var(--transition);
            display: flex; align-items: center; justify-content: center;
            color: var(--text);
        }
        .qty-btn:hover { border-color: var(--primary); color: var(--primary); }
        .qty-num { font-size: 0.85rem; font-weight: 700; color: var(--text); min-width: 18px; text-align: center; }

        /* Cart footer */
        .cart-footer { padding: 14px 16px; border-top: 1px solid var(--border); }
        .cart-total-row {
            display: flex; justify-content: space-between; align-items: center;
            margin-bottom: 12px;
        }
        .cart-total-label { font-size: 0.82rem; color: var(--text-muted); font-weight: 600; }
        .cart-total-amount {
            font-family: 'Outfit', sans-serif;
            font-size: 1.2rem; font-weight: 900;
            background: linear-gradient(135deg, var(--primary), var(--orange));
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
            background-clip: text;
        }
        .btn-checkout {
            width: 100%; padding: 13px;
            background: linear-gradient(135deg, var(--primary), var(--orange));
            color: white; border: none;
            border-radius: var(--radius-full);
            font-family: 'Outfit', sans-serif;
            font-size: 0.95rem; font-weight: 800;
            cursor: pointer; transition: var(--transition);
            box-shadow: 0 4px 16px var(--primary-glow);
            display: flex; align-items: center; justify-content: center; gap: 6px;
        }
        .btn-checkout:hover { transform: translateY(-2px); box-shadow: 0 8px 24px var(--primary-glow); }
        .btn-checkout:disabled { opacity: 0.4; cursor: not-allowed; transform: none; }

        /* Cart notification toast */
        .cart-toast {
            position: fixed; bottom: 30px; left: 50%; transform: translateX(-50%);
            background: #1DB954; color: white;
            padding: 12px 24px; border-radius: var(--radius-full);
            font-weight: 700; font-size: 0.9rem;
            box-shadow: 0 8px 24px rgba(0,0,0,0.2);
            z-index: 9999;
            opacity: 0; transition: opacity 0.3s ease;
            pointer-events: none;
            display: flex; align-items: center; gap: 8px;
        }
        .cart-toast.show { opacity: 1; }

        /* ── RESPONSIVE ── */
        @media (max-width: 1100px) {
            .main-layout { grid-template-columns: 1fr; }
            .cart-sidebar { position: static; }
        }
        @media (max-width: 768px) {
            .main-layout { padding: 1.5rem 1rem 3rem; }
            .menu-grid { grid-template-columns: 1fr; }
            .rest-hero { height: 220px; }
            .rest-hero-content { padding: 1.5rem 1rem; }
        }
    </style>
</head>
<body>

<!-- Inline theme -->
<script>
(function() {
    var t = localStorage.getItem('fe-theme') || 'dark';
    document.documentElement.setAttribute('data-theme', t);
})();
</script>

<!-- ── NAVBAR ── -->
<nav class="nav">
    <div class="nav-inner">
        <a href="${pageContext.request.contextPath}/home" class="nav-logo">Food<span>Express</span></a>

        <div class="nav-breadcrumb">
            <a href="${pageContext.request.contextPath}/home">Home</a>
            <span class="sep">›</span>
            <span class="current"><c:out value="${restaurant.name}"/></span>
        </div>

        <div class="nav-actions">
            <button class="theme-toggle" id="themeToggle" onclick="toggleTheme()" title="Toggle theme">&#9728;&#65039;</button>
            <a href="${pageContext.request.contextPath}/home" class="btn-back">&#8592; Back</a>
            <a href="${pageContext.request.contextPath}/cart" class="nav-cart-btn" id="navCartBtn">
                &#128722; Cart
                <c:if test="${not empty sessionScope.cartCount && sessionScope.cartCount > 0}">
                    <span class="cart-badge" id="navCartBadge"><c:out value="${sessionScope.cartCount}"/></span>
                </c:if>
            </a>
        </div>
    </div>
</nav>

<!-- ── RESTAURANT HERO ── -->
<div class="rest-hero">
    <img class="rest-hero-img"
         src="<c:out value='${restaurant.imageUrl}'/>"
         alt="<c:out value='${restaurant.name}'/>"
         onerror="this.onerror=null;this.src='https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?w=1200&auto=format'">
    <div class="rest-hero-overlay"></div>
    <div class="rest-hero-content">
        <div class="rest-hero-tag">&#127869; Restaurant Menu</div>
        <div class="rest-hero-name"><c:out value="${restaurant.name}"/></div>
        <div class="rest-hero-meta">
            <div class="hero-rating">&#9733; <c:out value="${restaurant.rating}"/></div>
            <div class="hero-meta-item">&#128336; <c:out value="${restaurant.deliveryTime}"/> min delivery</div>
            <div class="hero-meta-item">&#127869; <c:out value="${restaurant.cuisine}"/></div>
        </div>
    </div>
</div>

<!-- ── MAIN LAYOUT ── -->
<div class="main-layout">

    <!-- LEFT: Menu Items -->
    <div class="menu-column">
        <div class="menu-section-title">
            &#127869; Our Menu
            <span class="menu-count">${fn:length(menuList)} items</span>
        </div>

        <div class="menu-grid">
            <c:choose>
                <c:when test="${not empty menuList}">
                    <c:forEach var="item" items="${menuList}" varStatus="st">
                        <div class="menu-card" style="animation-delay:${st.index * 0.06}s">
                            <div class="menu-card-img">
                                <img src="<c:out value='${item.imageUrl}'/>"
                                     alt="<c:out value='${item.name}'/>"
                                     onerror="this.onerror=null;this.src='https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=400&auto=format'"
                                     loading="lazy">
                                <%-- Veg / Non-veg badge per menu item --%>
                                <c:choose>
                                    <c:when test="${item.veg}">
                                        <div class="menu-card-badge badge-veg">&#129367; VEG</div>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="menu-card-badge badge-nonveg">&#127831; NON-VEG</div>
                                    </c:otherwise>
                                </c:choose>
                                <div class="menu-card-rating-pill">&#9733; <c:out value="${item.rating}"/></div>
                            </div>
                            <div class="menu-card-body">
                                <div class="menu-card-name"><c:out value="${item.name}"/></div>
                                <div class="menu-card-desc"><c:out value="${item.description}"/></div>
                                <div class="menu-card-footer">
                                    <div class="menu-price">
                                        <span class="currency">&#8377;</span><fmt:formatNumber value="${item.price}" maxFractionDigits="0"/>
                                    </div>
                                    <button class="btn-add" id="btn-${item.id}"
                                            data-id="${item.id}"
                                            data-name="<c:out value='${item.name}'/>"
                                            data-price="${item.price}"
                                            onclick="addToCart(this.dataset.id, this.dataset.name, this.dataset.price, this)">
                                        + Add
                                    </button>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <div class="empty-menu">
                        <div class="empty-icon">&#127869;</div>
                        <h3>No menu items available</h3>
                        <p>This restaurant hasn't added menu items yet. Check back later!</p>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
    </div>

    <!-- RIGHT: Cart Sidebar -->
    <div class="cart-sidebar" id="cartSidebar">
        <div class="cart-sidebar-header">
            <div class="cart-sidebar-title">&#128722; Your Order</div>
            <span class="cart-count-badge" id="sidebarCount">0 items</span>
        </div>

        <div class="cart-body" id="cartBody">
            <div class="cart-empty-msg" id="cartEmptyMsg">
                <div class="cart-empty-icon">&#128722;</div>
                <div>Add items to start your order!</div>
            </div>
            <!-- Cart items will be rendered here by JS -->
        </div>

        <div class="cart-footer" id="cartFooter" style="display:none;">
            <div class="cart-total-row">
                <span class="cart-total-label">Total Amount</span>
                <span class="cart-total-amount" id="cartTotal">&#8377;0</span>
            </div>
            <button class="btn-checkout" id="checkoutBtn" onclick="goToCart()">
                &#128722; View Cart &amp; Checkout
            </button>
        </div>
    </div>

</div><!-- end main-layout -->

<!-- Toast notification -->
<div class="cart-toast" id="cartToast">&#10003; Added to cart!</div>

<script>
    /* ── Theme ── */
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

    /* ── Local cart (sessionStorage) ── */
    var RESTAURANT_ID = '${restaurant.id}';
    var CONTEXT = '${pageContext.request.contextPath}';

    // Load cart from sessionStorage
    function getCart() {
        try {
            var data = sessionStorage.getItem('fe-cart-' + RESTAURANT_ID);
            return data ? JSON.parse(data) : {};
        } catch(e) { return {}; }
    }

    function saveCart(cart) {
        sessionStorage.setItem('fe-cart-' + RESTAURANT_ID, JSON.stringify(cart));
    }

    function addToCart(id, name, price, btn) {
        var cart = getCart();
        if (cart[id]) {
            cart[id].qty += 1;
        } else {
            cart[id] = { id: id, name: name, price: parseFloat(price), qty: 1 };
        }
        saveCart(cart);
        renderSidebar();
        showToast('✓ ' + name + ' added!');

        // Animate button
        btn.classList.add('added');
        btn.textContent = '✓ Added';
        setTimeout(function() {
            btn.classList.remove('added');
            btn.textContent = '+ Add';
        }, 1500);

        // Sync to server session via fetch
        syncToServer(id, 'add');
    }

    function changeQty(id, delta) {
        var cart = getCart();
        if (!cart[id]) return;
        cart[id].qty += delta;
        if (cart[id].qty <= 0) {
            delete cart[id];
            syncToServer(id, 'remove');
        } else {
            syncToServer(id, 'update', cart[id].qty);
        }
        saveCart(cart);
        renderSidebar();
    }

    function renderSidebar() {
        var cart = getCart();
        var keys = Object.keys(cart);
        var body = document.getElementById('cartBody');
        var footer = document.getElementById('cartFooter');
        var sidebarCount = document.getElementById('sidebarCount');
        var total = 0;
        var totalQty = 0;

        if (keys.length === 0) {
            // Always rebuild — never rely on DOM references that may be destroyed
            body.innerHTML = '<div class="cart-empty-msg" id="cartEmptyMsg"><div class="cart-empty-icon">&#128722;</div><div>Add items to start your order!</div></div>';
            footer.style.display = 'none';
            sidebarCount.textContent = '0 items';
            updateNavBadge(0);
            return;
        }

        var html = '';
        keys.forEach(function(idStr) {
            var item = cart[idStr];
            if (!item) return;
            total += item.price * item.qty;
            totalQty += item.qty;
            html += '<div class="cart-item">' +
                '<img class="cart-item-img" src="https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=100&auto=format" alt="" onerror="this.style.display=\'none\'">' +
                '<div class="cart-item-info">' +
                    '<div class="cart-item-name">' + item.name + '</div>' +
                    '<div class="cart-item-price">&#8377;' + (item.price * item.qty).toFixed(0) + '</div>' +
                '</div>' +
                '<div class="qty-controls">' +
                    '<button class="qty-btn" onclick="changeQty(\'' + idStr + '\', -1)">&#8722;</button>' +
                    '<span class="qty-num">' + item.qty + '</span>' +
                    '<button class="qty-btn" onclick="changeQty(\'' + idStr + '\', 1)">+</button>' +
                '</div>' +
            '</div>';
        });

        body.innerHTML = html;
        footer.style.display = 'block';
        document.getElementById('cartTotal').innerHTML = '&#8377;' + total.toFixed(0);
        sidebarCount.textContent = totalQty + ' item' + (totalQty !== 1 ? 's' : '');
        updateNavBadge(totalQty);
    }

    function updateNavBadge(count) {
        var badge = document.getElementById('navCartBadge');
        if (!badge) {
            if (count > 0) {
                badge = document.createElement('span');
                badge.id = 'navCartBadge';
                badge.className = 'cart-badge';
                document.getElementById('navCartBtn').appendChild(badge);
            }
        }
        if (badge) badge.textContent = count;
    }

    function goToCart() {
        window.location.href = CONTEXT + '/cart';
    }

    function syncToServer(menuId, action, qty) {
        var formData = new URLSearchParams();
        formData.append('action', action);
        formData.append('menuId', menuId);
        if (qty !== undefined) formData.append('quantity', qty);
        formData.append('redirectTo', '/menu?restaurantId=' + RESTAURANT_ID);

        fetch(CONTEXT + '/cart', {
            method: 'POST',
            headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
            body: formData.toString()
        }).catch(function(e) { console.warn('Cart sync error:', e); });
    }

    function showToast(msg) {
        var t = document.getElementById('cartToast');
        t.textContent = msg;
        t.classList.add('show');
        setTimeout(function() { t.classList.remove('show'); }, 2500);
    }

    // Init sidebar
    renderSidebar();
</script>
</body>
</html>
