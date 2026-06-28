<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="FoodExpress — Order food online from the best South Indian restaurants near you. Fast delivery, great taste.">
    <title>FoodExpress — Discover the best food in Chennai</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700;800;900&family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        *, *::before, *::after { margin: 0; padding: 0; box-sizing: border-box; }

        :root {
            --primary: #E23744;
            --primary-dark: #C0392B;
            --orange: #FF6B35;
            --orange-dark: #E55A2B;
            --bg: #FFFFFF;
            --bg-gray: #F8F8F8;
            --bg-dark: #1C1C1C;
            --text: #1C1C1C;
            --text-muted: #696969;
            --text-light: #9E9E9E;
            --border: #E8E8E8;
            --shadow: 0 4px 24px rgba(0,0,0,0.08);
            --shadow-lg: 0 8px 40px rgba(0,0,0,0.14);
            --radius: 16px;
            --radius-sm: 8px;
            --radius-full: 50px;
            --green: #48C479;
        }

        html { scroll-behavior: smooth; }
        body { font-family: 'Inter', sans-serif; color: var(--text); background: var(--bg); overflow-x: hidden; }

        a { text-decoration: none; color: inherit; }
        img { max-width: 100%; display: block; }

        /* ===== NAVBAR ===== */
        .nav {
            position: sticky; top: 0; z-index: 999;
            background: rgba(255,255,255,0.96);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid var(--border);
            padding: 0 2rem;
        }
        .nav-inner {
            max-width: 1280px; margin: 0 auto;
            display: flex; align-items: center; gap: 24px; height: 72px;
        }
        .nav-logo {
            font-family: 'Outfit', sans-serif;
            font-size: 1.8rem; font-weight: 900;
            color: var(--primary);
            letter-spacing: -1px;
            flex-shrink: 0;
        }
        .nav-logo span { color: var(--orange); }
        .nav-location {
            display: flex; align-items: center; gap: 6px;
            padding: 8px 14px; border: 1px solid var(--border);
            border-radius: var(--radius-sm); cursor: pointer;
            font-size: 0.85rem; color: var(--text-muted);
            transition: all 0.2s; flex-shrink: 0;
        }
        .nav-location:hover { border-color: var(--primary); color: var(--primary); }
        .nav-search {
            flex: 1; display: flex; align-items: center;
            background: var(--bg-gray); border: 1px solid var(--border);
            border-radius: var(--radius-sm); padding: 10px 16px; gap: 10px;
            transition: all 0.2s; max-width: 440px;
        }
        .nav-search:focus-within { border-color: var(--primary); background: white; box-shadow: 0 0 0 3px rgba(226,55,68,0.1); }
        .nav-search input { border: none; background: transparent; flex: 1; font-family: 'Inter', sans-serif; font-size: 0.9rem; color: var(--text); outline: none; }
        .nav-search input::placeholder { color: var(--text-light); }
        .nav-actions { margin-left: auto; display: flex; align-items: center; gap: 12px; flex-shrink: 0; }
        .btn-login {
            padding: 9px 22px; border: 1.5px solid var(--primary); border-radius: var(--radius-sm);
            color: var(--primary); font-weight: 600; font-size: 0.9rem;
            background: transparent; cursor: pointer; transition: all 0.2s; font-family: 'Inter', sans-serif;
        }
        .btn-login:hover { background: rgba(226,55,68,0.06); }
        .btn-signup {
            padding: 9px 22px; background: var(--primary); border: 1.5px solid var(--primary);
            border-radius: var(--radius-sm); color: white; font-weight: 600; font-size: 0.9rem;
            cursor: pointer; transition: all 0.2s; font-family: 'Inter', sans-serif;
        }
        .btn-signup:hover { background: var(--primary-dark); border-color: var(--primary-dark); }

        /* ===== HERO ===== */
        .hero {
            position: relative; min-height: 480px;
            background: linear-gradient(135deg, #1C1C1C 0%, #2D1B00 40%, #3D1010 100%);
            display: flex; align-items: center; overflow: hidden;
        }
        .hero::before {
            content: ''; position: absolute; inset: 0;
            background: url('https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=1400&auto=format') center/cover;
            opacity: 0.25;
        }
        .hero::after {
            content: ''; position: absolute; inset: 0;
            background: linear-gradient(135deg, rgba(28,28,28,0.92) 0%, rgba(226,55,68,0.3) 60%, rgba(255,107,53,0.2) 100%);
        }
        .hero-content {
            position: relative; z-index: 2;
            max-width: 1280px; margin: 0 auto; padding: 4rem 2rem; width: 100%;
        }
        .hero-badge {
            display: inline-flex; align-items: center; gap: 8px;
            background: rgba(255,255,255,0.1); backdrop-filter: blur(10px);
            border: 1px solid rgba(255,255,255,0.2);
            padding: 6px 16px; border-radius: var(--radius-full);
            color: rgba(255,255,255,0.9); font-size: 0.8rem; font-weight: 500;
            margin-bottom: 1.5rem;
        }
        .hero h1 {
            font-family: 'Outfit', sans-serif;
            font-size: clamp(2.2rem, 5vw, 3.8rem);
            font-weight: 900; color: white; line-height: 1.15;
            margin-bottom: 1rem; max-width: 600px;
        }
        .hero h1 .highlight { color: var(--orange); }
        .hero p { color: rgba(255,255,255,0.7); font-size: 1.1rem; margin-bottom: 2rem; max-width: 500px; }
        .hero-search {
            display: flex; max-width: 580px;
            background: white; border-radius: var(--radius-sm);
            overflow: hidden; box-shadow: 0 8px 40px rgba(0,0,0,0.3);
        }
        .hero-search-loc {
            display: flex; align-items: center; gap: 8px;
            padding: 0 18px; border-right: 1px solid var(--border);
            min-width: 160px; cursor: pointer;
        }
        .hero-search-loc span { font-size: 0.85rem; color: var(--text); font-weight: 500; white-space: nowrap; }
        .hero-search input {
            flex: 1; border: none; padding: 18px 16px;
            font-family: 'Inter', sans-serif; font-size: 0.95rem; color: var(--text); outline: none;
        }
        .hero-search input::placeholder { color: var(--text-light); }
        .hero-search-btn {
            padding: 0 28px; background: var(--primary); color: white;
            border: none; font-family: 'Outfit', sans-serif; font-weight: 700;
            font-size: 1rem; cursor: pointer; transition: background 0.2s; white-space: nowrap;
        }
        .hero-search-btn:hover { background: var(--primary-dark); }
        .hero-stats {
            display: flex; gap: 2rem; margin-top: 2.5rem;
        }
        .hero-stat { text-align: center; }
        .hero-stat .num { font-family: 'Outfit', sans-serif; font-size: 1.8rem; font-weight: 800; color: white; }
        .hero-stat .label { font-size: 0.8rem; color: rgba(255,255,255,0.5); margin-top: 2px; }

        /* ===== TABS ===== */
        .tabs-bar {
            background: white; border-bottom: 2px solid var(--border); padding: 0 2rem;
            position: sticky; top: 72px; z-index: 99;
        }
        .tabs-inner { max-width: 1280px; margin: 0 auto; display: flex; gap: 0; }
        .tab-item {
            display: flex; align-items: center; gap: 8px;
            padding: 14px 24px; font-size: 0.92rem; font-weight: 600;
            color: var(--text-muted); border-bottom: 3px solid transparent;
            cursor: pointer; transition: all 0.2s; margin-bottom: -2px;
        }
        .tab-item:hover { color: var(--primary); }
        .tab-item.active { color: var(--primary); border-bottom-color: var(--primary); }
        .tab-item .tab-icon { font-size: 1.2rem; }

        /* ===== SECTION WRAPPER ===== */
        .section { max-width: 1280px; margin: 0 auto; padding: 2.5rem 2rem; }
        .section-title { font-family: 'Outfit', sans-serif; font-size: 1.6rem; font-weight: 800; color: var(--text); margin-bottom: 0.4rem; }
        .section-sub { color: var(--text-muted); font-size: 0.9rem; margin-bottom: 1.5rem; }

        /* ===== FOOD CATEGORIES ===== */
        .categories-scroll {
            display: flex; gap: 1.2rem; overflow-x: auto; padding-bottom: 8px;
            scrollbar-width: none;
        }
        .categories-scroll::-webkit-scrollbar { display: none; }
        .cat-item {
            display: flex; flex-direction: column; align-items: center; gap: 10px;
            flex-shrink: 0; cursor: pointer;
            transition: transform 0.2s;
        }
        .cat-item:hover { transform: translateY(-4px); }
        .cat-circle {
            width: 100px; height: 100px; border-radius: 50%; overflow: hidden;
            border: 2px solid var(--border); box-shadow: var(--shadow);
            transition: all 0.2s;
        }
        .cat-item:hover .cat-circle { border-color: var(--primary); box-shadow: 0 4px 20px rgba(226,55,68,0.15); }
        .cat-circle img { width: 100%; height: 100%; object-fit: cover; }
        .cat-label { font-size: 0.82rem; font-weight: 600; color: var(--text); text-align: center; }

        /* ===== COLLECTIONS ===== */
        .collections-grid { display: grid; grid-template-columns: repeat(4, 1fr); gap: 1.2rem; }
        .collection-card {
            border-radius: var(--radius); overflow: hidden; position: relative;
            height: 180px; cursor: pointer; box-shadow: var(--shadow);
            transition: all 0.3s;
        }
        .collection-card:hover { transform: translateY(-4px); box-shadow: var(--shadow-lg); }
        .collection-card img { width: 100%; height: 100%; object-fit: cover; transition: transform 0.4s; }
        .collection-card:hover img { transform: scale(1.06); }
        .collection-card .overlay {
            position: absolute; inset: 0;
            background: linear-gradient(to top, rgba(0,0,0,0.75) 0%, rgba(0,0,0,0.1) 60%);
        }
        .collection-card .col-info {
            position: absolute; bottom: 0; left: 0; right: 0;
            padding: 16px;
        }
        .collection-card .col-name { font-family: 'Outfit', sans-serif; font-size: 1rem; font-weight: 700; color: white; }
        .collection-card .col-count { font-size: 0.78rem; color: rgba(255,255,255,0.7); margin-top: 2px; }

        /* ===== RESTAURANT CARDS ===== */
        .restaurants-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 1.5rem; }
        .rest-card {
            border-radius: var(--radius); overflow: hidden; background: white;
            box-shadow: var(--shadow); cursor: pointer; transition: all 0.3s;
            border: 1px solid var(--border);
        }
        .rest-card:hover { transform: translateY(-6px); box-shadow: var(--shadow-lg); }
        .rest-card-img {
            height: 190px; overflow: hidden; position: relative;
        }
        .rest-card-img img { width: 100%; height: 100%; object-fit: cover; transition: transform 0.4s; }
        .rest-card:hover .rest-card-img img { transform: scale(1.06); }
        .rest-card-img .promo-badge {
            position: absolute; bottom: 0; left: 0; right: 0;
            background: linear-gradient(to top, rgba(0,0,0,0.7), transparent);
            padding: 20px 14px 10px;
            color: white; font-size: 0.8rem; font-weight: 600;
        }
        .rest-card-img .discount-tag {
            position: absolute; top: 10px; left: 10px;
            background: var(--primary); color: white;
            padding: 4px 10px; border-radius: 4px; font-size: 0.75rem; font-weight: 700;
        }
        .rest-card-body { padding: 14px 14px 16px; }
        .rest-card-header { display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 4px; }
        .rest-card-name { font-family: 'Outfit', sans-serif; font-size: 1.05rem; font-weight: 700; color: var(--text); }
        .rest-card-rating {
            display: flex; align-items: center; gap: 4px;
            background: var(--green); color: white; padding: 3px 8px;
            border-radius: 4px; font-size: 0.8rem; font-weight: 700; flex-shrink: 0;
        }
        .rest-card-cuisine { font-size: 0.82rem; color: var(--text-muted); margin-bottom: 8px; }
        .rest-card-meta {
            display: flex; align-items: center; gap: 6px;
            font-size: 0.8rem; color: var(--text-muted); padding-top: 8px;
            border-top: 1px solid var(--border);
        }
        .rest-card-meta .dot { width: 4px; height: 4px; border-radius: 50%; background: var(--text-light); }

        /* ===== BRAND LOGOS ===== */
        .brands-scroll { display: flex; gap: 1rem; overflow-x: auto; padding-bottom: 8px; scrollbar-width: none; }
        .brands-scroll::-webkit-scrollbar { display: none; }
        .brand-card {
            flex-shrink: 0; width: 120px; border-radius: var(--radius);
            border: 1px solid var(--border); overflow: hidden; cursor: pointer;
            transition: all 0.2s; box-shadow: var(--shadow);
        }
        .brand-card:hover { transform: translateY(-3px); border-color: var(--primary); }
        .brand-card img { width: 100%; height: 80px; object-fit: cover; }
        .brand-card .brand-name { font-size: 0.75rem; font-weight: 600; color: var(--text); padding: 8px 10px; text-align: center; }
        .brand-card .brand-sub { font-size: 0.68rem; color: var(--text-muted); padding: 0 10px 8px; text-align: center; }

        /* ===== PROMO BANNER ===== */
        .promo-banner {
            background: linear-gradient(135deg, #1C1C1C 0%, #3D1010 100%);
            border-radius: var(--radius); padding: 2.5rem 2.5rem;
            display: flex; align-items: center; justify-content: space-between;
            overflow: hidden; position: relative; margin: 0 2rem;
            max-width: 1280px; margin: 0 auto;
        }
        .promo-banner::before {
            content: ''; position: absolute; inset: 0;
            background: url('https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=800') center/cover;
            opacity: 0.15;
        }
        .promo-content { position: relative; z-index: 1; }
        .promo-badge-label { background: var(--orange); color: white; padding: 4px 12px; border-radius: 4px; font-size: 0.8rem; font-weight: 700; display: inline-block; margin-bottom: 12px; }
        .promo-title { font-family: 'Outfit', sans-serif; font-size: 2rem; font-weight: 900; color: white; line-height: 1.2; margin-bottom: 8px; }
        .promo-sub { color: rgba(255,255,255,0.6); font-size: 0.9rem; margin-bottom: 20px; }
        .promo-cta { display: inline-flex; align-items: center; gap: 8px; background: var(--primary); color: white; padding: 12px 28px; border-radius: var(--radius-sm); font-weight: 700; font-size: 0.95rem; transition: all 0.2s; }
        .promo-cta:hover { background: var(--primary-dark); transform: translateY(-2px); }
        .promo-image { position: relative; z-index: 1; }
        .promo-image img { width: 280px; border-radius: var(--radius); object-fit: cover; height: 180px; }

        /* ===== EXPLORE ===== */
        .explore-grid { display: grid; grid-template-columns: repeat(5, 1fr); gap: 1rem; }
        .explore-card {
            border-radius: var(--radius); overflow: hidden;
            position: relative; height: 130px; cursor: pointer;
            transition: all 0.3s; box-shadow: var(--shadow);
        }
        .explore-card:hover { transform: translateY(-4px); box-shadow: var(--shadow-lg); }
        .explore-card img { width: 100%; height: 100%; object-fit: cover; transition: transform 0.4s; }
        .explore-card:hover img { transform: scale(1.08); }
        .explore-card .ex-overlay {
            position: absolute; inset: 0;
            background: linear-gradient(to top, rgba(0,0,0,0.7) 0%, rgba(0,0,0,0.1) 60%);
        }
        .explore-card .ex-label { position: absolute; bottom: 10px; left: 12px; right: 12px; font-size: 0.82rem; font-weight: 700; color: white; }

        /* ===== WHY US ===== */
        .why-bg { background: var(--bg-gray); padding: 4rem 2rem; }
        .why-inner { max-width: 1280px; margin: 0 auto; }
        .why-grid { display: grid; grid-template-columns: repeat(4, 1fr); gap: 2rem; margin-top: 2rem; }
        .why-card {
            background: white; border-radius: var(--radius); padding: 2rem 1.5rem;
            text-align: center; border: 1px solid var(--border);
            transition: all 0.3s; box-shadow: var(--shadow);
        }
        .why-card:hover { transform: translateY(-4px); box-shadow: var(--shadow-lg); border-color: var(--primary); }
        .why-icon { font-size: 2.5rem; margin-bottom: 1rem; }
        .why-title { font-family: 'Outfit', sans-serif; font-size: 1.05rem; font-weight: 700; color: var(--text); margin-bottom: 8px; }
        .why-desc { font-size: 0.85rem; color: var(--text-muted); line-height: 1.6; }

        /* ===== FOOTER ===== */
        .footer { background: #1C1C1C; color: white; padding: 3rem 2rem 1.5rem; }
        .footer-inner { max-width: 1280px; margin: 0 auto; }
        .footer-top { display: grid; grid-template-columns: 2fr 1fr 1fr 1fr 1fr; gap: 2rem; margin-bottom: 3rem; }
        .footer-brand .f-logo { font-family: 'Outfit', sans-serif; font-size: 1.8rem; font-weight: 900; color: var(--primary); margin-bottom: 12px; }
        .footer-brand .f-logo span { color: var(--orange); }
        .footer-brand p { color: rgba(255,255,255,0.5); font-size: 0.85rem; line-height: 1.7; max-width: 280px; }
        .footer-brand .app-badges { display: flex; gap: 10px; margin-top: 1.5rem; }
        .app-badge { background: rgba(255,255,255,0.08); border: 1px solid rgba(255,255,255,0.15); padding: 8px 16px; border-radius: var(--radius-sm); font-size: 0.8rem; color: white; cursor: pointer; transition: all 0.2s; }
        .app-badge:hover { background: rgba(255,255,255,0.15); }
        .footer-col h4 { font-family: 'Outfit', sans-serif; font-weight: 700; color: rgba(255,255,255,0.9); margin-bottom: 1rem; font-size: 0.95rem; }
        .footer-col ul { list-style: none; }
        .footer-col ul li { margin-bottom: 8px; }
        .footer-col ul li a { color: rgba(255,255,255,0.5); font-size: 0.85rem; transition: color 0.2s; }
        .footer-col ul li a:hover { color: var(--primary); }
        .footer-bottom {
            border-top: 1px solid rgba(255,255,255,0.08); padding-top: 1.5rem;
            display: flex; justify-content: space-between; align-items: center;
        }
        .footer-bottom p { color: rgba(255,255,255,0.3); font-size: 0.8rem; }
        .social-links { display: flex; gap: 12px; }
        .social-link { width: 36px; height: 36px; border-radius: 50%; background: rgba(255,255,255,0.08); display: flex; align-items: center; justify-content: center; font-size: 0.9rem; cursor: pointer; transition: all 0.2s; color: white; }
        .social-link:hover { background: var(--primary); }

        /* ===== DIVIDER ===== */
        .divider { height: 8px; background: var(--bg-gray); }

        /* ===== RESPONSIVE ===== */
        @media (max-width: 1024px) {
            .collections-grid { grid-template-columns: repeat(2, 1fr); }
            .restaurants-grid { grid-template-columns: repeat(2, 1fr); }
            .explore-grid { grid-template-columns: repeat(3, 1fr); }
            .why-grid { grid-template-columns: repeat(2, 1fr); }
            .footer-top { grid-template-columns: 1fr 1fr; }
        }
        @media (max-width: 768px) {
            .hero h1 { font-size: 2rem; }
            .hero-search { flex-direction: column; }
            .hero-search-loc { border-right: none; border-bottom: 1px solid var(--border); }
            .restaurants-grid, .collections-grid { grid-template-columns: 1fr; }
            .explore-grid { grid-template-columns: repeat(2, 1fr); }
            .why-grid { grid-template-columns: 1fr; }
            .nav-search { display: none; }
            .nav-location { display: none; }
        }

        /* ===== ANIMATIONS ===== */
        @keyframes fadeUp { from { opacity: 0; transform: translateY(20px); } to { opacity: 1; transform: translateY(0); } }
        .fade-up { animation: fadeUp 0.6s ease backwards; }
        .delay-1 { animation-delay: 0.1s; } .delay-2 { animation-delay: 0.2s; } .delay-3 { animation-delay: 0.3s; }

        .chips { display: flex; gap: 8px; flex-wrap: wrap; margin-bottom: 1.5rem; }
        .chip { padding: 6px 16px; border: 1px solid var(--border); border-radius: var(--radius-full); font-size: 0.82rem; font-weight: 500; color: var(--text-muted); cursor: pointer; transition: all 0.2s; }
        .chip:hover, .chip.active { border-color: var(--primary); color: var(--primary); background: rgba(226,55,68,0.05); }
    </style>
</head>
<body>

<!-- ===== NAVBAR ===== -->
<nav class="nav">
    <div class="nav-inner">
        <div class="nav-logo">Food<span>Express</span></div>
        <div class="nav-location">
            <span>📍</span>
            <span>Chennai, Tamil Nadu</span>
            <span>▾</span>
        </div>
        <div class="nav-search">
            <span>🔍</span>
            <input type="text" placeholder="Search for restaurants, cuisines or dishes..." id="navSearch" onkeydown="if(event.key==='Enter'){searchFromNav()}">
        </div>
        <div class="nav-actions">
            <a href="${pageContext.request.contextPath}/index.jsp" class="btn-login">Log in</a>
            <a href="${pageContext.request.contextPath}/register" class="btn-signup">Sign up</a>
        </div>
    </div>
</nav>

<!-- ===== TABS ===== -->
<div class="tabs-bar">
    <div class="tabs-inner">
        <div class="tab-item active"><span class="tab-icon">🛵</span> Delivery</div>
        <div class="tab-item"><span class="tab-icon">🍽️</span> Dining Out</div>
        <div class="tab-item"><span class="tab-icon">✨</span> Collections</div>
    </div>
</div>

<!-- ===== HERO ===== -->
<section class="hero">
    <div class="hero-content">
        <div class="hero-badge fade-up">🍛 South India's Favourite Food App</div>
        <h1 class="fade-up delay-1">Discover the best <span class="highlight">food & drinks</span> in Chennai</h1>
        <p class="fade-up delay-2">Order from 20+ restaurants. Fresh food, fast delivery.</p>
        <div class="hero-search fade-up delay-3">
            <div class="hero-search-loc">
                <span>📍</span>
                <span>Chennai</span>
                <span>▾</span>
            </div>
            <input type="text" placeholder="Search for restaurant, cuisine or dish..." id="heroSearch">
            <button class="hero-search-btn" onclick="searchHero()">Search</button>
        </div>
        <div class="hero-stats fade-up delay-3">
            <div class="hero-stat"><div class="num">20+</div><div class="label">Restaurants</div></div>
            <div class="hero-stat"><div class="num">100+</div><div class="label">Menu Items</div></div>
            <div class="hero-stat"><div class="num">30 min</div><div class="label">Avg Delivery</div></div>
            <div class="hero-stat"><div class="num">4.5★</div><div class="label">Avg Rating</div></div>
        </div>
    </div>
</section>

<div class="divider"></div>

<!-- ===== FOOD CATEGORIES ===== -->
<div class="section">
    <div class="section-title">Inspiration for your first order</div>
    <div class="section-sub">What are you craving today?</div>
    <div class="categories-scroll">
        <div class="cat-item" onclick="filterCategory('Biryani')">
            <div class="cat-circle"><img src="https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=200&auto=format" alt="Biryani" loading="lazy"></div>
            <div class="cat-label">Biryani</div>
        </div>
        <div class="cat-item" onclick="filterCategory('Dosa')">
            <div class="cat-circle"><img src="https://images.unsplash.com/photo-1630383249896-424e482df921?w=200&auto=format" alt="Dosa" loading="lazy"></div>
            <div class="cat-label">Dosa</div>
        </div>
        <div class="cat-item" onclick="filterCategory('Idli')">
            <div class="cat-circle"><img src="https://images.unsplash.com/photo-1668236543090-82eba5ee5976?w=200&auto=format" alt="Idli" loading="lazy"></div>
            <div class="cat-label">Idli</div>
        </div>
        <div class="cat-item" onclick="filterCategory('Meals')">
            <div class="cat-circle"><img src="https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=200&auto=format" alt="Meals" loading="lazy"></div>
            <div class="cat-label">Meals</div>
        </div>
        <div class="cat-item" onclick="filterCategory('Parotta')">
            <div class="cat-circle"><img src="https://images.unsplash.com/photo-1599487488170-d11ec9c172f0?w=200&auto=format" alt="Parotta" loading="lazy"></div>
            <div class="cat-label">Parotta</div>
        </div>
        <div class="cat-item" onclick="filterCategory('Chicken')">
            <div class="cat-circle"><img src="https://images.unsplash.com/photo-1604908176997-125f25cc6f3d?w=200&auto=format" alt="Chicken" loading="lazy"></div>
            <div class="cat-label">Chicken</div>
        </div>
        <div class="cat-item" onclick="filterCategory('Seafood')">
            <div class="cat-circle"><img src="https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=200&auto=format" alt="Seafood" loading="lazy"></div>
            <div class="cat-label">Seafood</div>
        </div>
        <div class="cat-item" onclick="filterCategory('Chettinad')">
            <div class="cat-circle"><img src="https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=200&auto=format" alt="Chettinad" loading="lazy"></div>
            <div class="cat-label">Chettinad</div>
        </div>
        <div class="cat-item" onclick="filterCategory('Coffee')">
            <div class="cat-circle"><img src="https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=200&auto=format" alt="Coffee" loading="lazy"></div>
            <div class="cat-label">Coffee</div>
        </div>
        <div class="cat-item" onclick="filterCategory('Street Food')">
            <div class="cat-circle"><img src="https://images.unsplash.com/photo-1601050690117-94f5f6fa8bd7?w=200&auto=format" alt="Street Food" loading="lazy"></div>
            <div class="cat-label">Street Food</div>
        </div>
        <div class="cat-item" onclick="filterCategory('Sweets')">
            <div class="cat-circle"><img src="https://images.unsplash.com/photo-1572490122747-3968b75cc699?w=200&auto=format" alt="Sweets" loading="lazy"></div>
            <div class="cat-label">Sweets</div>
        </div>
        <div class="cat-item" onclick="filterCategory('Kerala')">
            <div class="cat-circle"><img src="https://images.unsplash.com/photo-1589301760014-d929f3979dbc?w=200&auto=format" alt="Kerala" loading="lazy"></div>
            <div class="cat-label">Kerala</div>
        </div>
    </div>
</div>

<div class="divider"></div>

<!-- ===== TOP BRANDS ===== -->
<div class="section">
    <div class="section-title">Top brands for you</div>
    <div class="section-sub">Your favourite restaurants, all in one place</div>
    <div class="brands-scroll">
        <div class="brand-card" onclick="goLogin()">
            <img src="https://images.unsplash.com/photo-1630383249896-424e482df921?w=240&auto=format" alt="Murugan Idli Shop" loading="lazy">
            <div class="brand-name">Murugan Idli</div>
            <div class="brand-sub">25–35 min</div>
        </div>
        <div class="brand-card" onclick="goLogin()">
            <img src="https://images.unsplash.com/photo-1589301760014-d929f3979dbc?w=240&auto=format" alt="Saravana Bhavan" loading="lazy">
            <div class="brand-name">Saravana Bhavan</div>
            <div class="brand-sub">20–30 min</div>
        </div>
        <div class="brand-card" onclick="goLogin()">
            <img src="https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=240&auto=format" alt="Thalappakatti" loading="lazy">
            <div class="brand-name">Thalappakatti</div>
            <div class="brand-sub">30–40 min</div>
        </div>
        <div class="brand-card" onclick="goLogin()">
            <img src="https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=240&auto=format" alt="Anjappar" loading="lazy">
            <div class="brand-name">Anjappar</div>
            <div class="brand-sub">35–45 min</div>
        </div>
        <div class="brand-card" onclick="goLogin()">
            <img src="https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=240&auto=format" alt="Nair Mess" loading="lazy">
            <div class="brand-name">Nair Mess</div>
            <div class="brand-sub">25–35 min</div>
        </div>
        <div class="brand-card" onclick="goLogin()">
            <img src="https://images.unsplash.com/photo-1599487488170-d11ec9c172f0?w=240&auto=format" alt="Buhari Hotel" loading="lazy">
            <div class="brand-name">Buhari Hotel</div>
            <div class="brand-sub">30–40 min</div>
        </div>
        <div class="brand-card" onclick="goLogin()">
            <img src="https://images.unsplash.com/photo-1642821373181-696a54913e93?w=240&auto=format" alt="Junior Kuppanna" loading="lazy">
            <div class="brand-name">Junior Kuppanna</div>
            <div class="brand-sub">35–45 min</div>
        </div>
    </div>
</div>

<div class="divider"></div>

<!-- ===== COLLECTIONS ===== -->
<div class="section">
    <div class="section-title">Collections</div>
    <div class="section-sub">Explore curated lists of top restaurants, cafes, and bars based on trends</div>
    <div class="collections-grid">
        <div class="collection-card" onclick="goLogin()">
            <img src="https://images.unsplash.com/photo-1630383249896-424e482df921?w=600&auto=format" alt="South Indian Breakfast" loading="lazy">
            <div class="overlay"></div>
            <div class="col-info">
                <div class="col-name">South Indian Breakfast</div>
                <div class="col-count">12 Places</div>
            </div>
        </div>
        <div class="collection-card" onclick="goLogin()">
            <img src="https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format" alt="Biryani Trail" loading="lazy">
            <div class="overlay"></div>
            <div class="col-info">
                <div class="col-name">Biryani Trail — Best in Chennai</div>
                <div class="col-count">8 Places</div>
            </div>
        </div>
        <div class="collection-card" onclick="goLogin()">
            <img src="https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=600&auto=format" alt="Chettinad Specials" loading="lazy">
            <div class="overlay"></div>
            <div class="col-info">
                <div class="col-name">Chettinad Specials</div>
                <div class="col-count">6 Places</div>
            </div>
        </div>
        <div class="collection-card" onclick="goLogin()">
            <img src="https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=600&auto=format" alt="Coastal Seafood" loading="lazy">
            <div class="overlay"></div>
            <div class="col-info">
                <div class="col-name">Coastal Seafood Gems</div>
                <div class="col-count">5 Places</div>
            </div>
        </div>
    </div>
</div>

<!-- ===== PROMO BANNER ===== -->
<div style="padding: 0 2rem; max-width:1280px; margin: 0 auto;">
    <div class="promo-banner">
        <div class="promo-content">
            <div class="promo-badge-label">🎉 LIMITED TIME</div>
            <div class="promo-title">Get up to<br>50% OFF</div>
            <div class="promo-sub">On your first 3 orders. Use code FOODEXPRESS50</div>
            <a href="${pageContext.request.contextPath}/register" class="promo-cta">Create Free Account →</a>
        </div>
        <div class="promo-image">
            <img src="https://images.unsplash.com/photo-1604908176997-125f25cc6f3d?w=400&auto=format" alt="Food offer" loading="lazy">
        </div>
    </div>
</div>

<div style="height: 2rem;"></div>
<div class="divider"></div>

<!-- ===== FEATURED RESTAURANTS ===== -->
<div class="section">
    <div class="section-title">Food Delivery Restaurants in Chennai</div>
    <div class="section-sub">Order food online and get it delivered to your doorstep</div>
    <div class="chips">
        <span class="chip active">All</span>
        <span class="chip">Pure Veg</span>
        <span class="chip">Non-Veg</span>
        <span class="chip">Biryani</span>
        <span class="chip">Chettinad</span>
        <span class="chip">South Indian</span>
        <span class="chip">Seafood</span>
        <span class="chip">Street Food</span>
    </div>
    <div class="restaurants-grid">

        <div class="rest-card" onclick="goLogin()">
            <div class="rest-card-img">
                <img src="https://images.unsplash.com/photo-1668236543090-82eba5ee5976?w=500&auto=format" alt="Murugan Idli Shop" loading="lazy">
                <div class="promo-badge">⚡ Free Delivery above ₹199</div>
            </div>
            <div class="rest-card-body">
                <div class="rest-card-header">
                    <div class="rest-card-name">Murugan Idli Shop</div>
                    <div class="rest-card-rating">★ 4.8</div>
                </div>
                <div class="rest-card-cuisine">South Indian, Tiffin</div>
                <div class="rest-card-meta">
                    <span>🕐 20 min</span><span class="dot"></span>
                    <span>📍 T. Nagar</span>
                </div>
            </div>
        </div>

        <div class="rest-card" onclick="goLogin()">
            <div class="rest-card-img">
                <img src="https://images.unsplash.com/photo-1642821373181-696a54913e93?w=500&auto=format" alt="Dindigul Thalappakatti" loading="lazy">
                <div class="discount-tag">30% OFF</div>
                <div class="promo-badge">🔥 Bestseller</div>
            </div>
            <div class="rest-card-body">
                <div class="rest-card-header">
                    <div class="rest-card-name">Dindigul Thalappakatti</div>
                    <div class="rest-card-rating">★ 4.7</div>
                </div>
                <div class="rest-card-cuisine">Biryani, South Indian</div>
                <div class="rest-card-meta">
                    <span>🕐 35 min</span><span class="dot"></span>
                    <span>📍 Anna Nagar</span>
                </div>
            </div>
        </div>

        <div class="rest-card" onclick="goLogin()">
            <div class="rest-card-img">
                <img src="https://images.unsplash.com/photo-1630383249896-424e482df921?w=500&auto=format" alt="Ratna Cafe" loading="lazy">
                <div class="promo-badge">⚡ Free Delivery</div>
            </div>
            <div class="rest-card-body">
                <div class="rest-card-header">
                    <div class="rest-card-name">Ratna Cafe</div>
                    <div class="rest-card-rating">★ 4.6</div>
                </div>
                <div class="rest-card-cuisine">South Indian, Breakfast</div>
                <div class="rest-card-meta">
                    <span>🕐 20 min</span><span class="dot"></span>
                    <span>📍 Triplicane</span>
                </div>
            </div>
        </div>

        <div class="rest-card" onclick="goLogin()">
            <div class="rest-card-img">
                <img src="/FoodOrderingSystem/images/restaurants/restaurant_chettinad.png" alt="Anjappar Chettinad" loading="lazy" onerror="this.src='https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=500&auto=format'">
                <div class="discount-tag">20% OFF</div>
            </div>
            <div class="rest-card-body">
                <div class="rest-card-header">
                    <div class="rest-card-name">Anjappar Chettinad</div>
                    <div class="rest-card-rating">★ 4.5</div>
                </div>
                <div class="rest-card-cuisine">Chettinad, South Indian</div>
                <div class="rest-card-meta">
                    <span>🕐 40 min</span><span class="dot"></span>
                    <span>📍 Vadapalani</span>
                </div>
            </div>
        </div>

        <div class="rest-card" onclick="goLogin()">
            <div class="rest-card-img">
                <img src="/FoodOrderingSystem/images/restaurants/restaurant_kerala.png" alt="Nair Mess" loading="lazy" onerror="this.src='https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500&auto=format'">
                <div class="promo-badge">🐟 Kerala Specials</div>
            </div>
            <div class="rest-card-body">
                <div class="rest-card-header">
                    <div class="rest-card-name">Nair Mess</div>
                    <div class="rest-card-rating">★ 4.5</div>
                </div>
                <div class="rest-card-cuisine">Kerala, Seafood, Meals</div>
                <div class="rest-card-meta">
                    <span>🕐 30 min</span><span class="dot"></span>
                    <span>📍 Royapettah</span>
                </div>
            </div>
        </div>

        <div class="rest-card" onclick="goLogin()">
            <div class="rest-card-img">
                <img src="https://images.unsplash.com/photo-1604908176997-125f25cc6f3d?w=500&auto=format" alt="Buhari Hotel" loading="lazy">
                <div class="discount-tag">Since 1951</div>
            </div>
            <div class="rest-card-body">
                <div class="rest-card-header">
                    <div class="rest-card-name">Buhari Hotel</div>
                    <div class="rest-card-rating">★ 4.3</div>
                </div>
                <div class="rest-card-cuisine">South Indian, Non-Veg</div>
                <div class="rest-card-meta">
                    <span>🕐 35 min</span><span class="dot"></span>
                    <span>📍 Mount Road</span>
                </div>
            </div>
        </div>

        <div class="rest-card" onclick="goLogin()">
            <div class="rest-card-img">
                <img src="https://images.unsplash.com/photo-1589301760014-d929f3979dbc?w=500&auto=format" alt="Saravana Bhavan" loading="lazy">
            </div>
            <div class="rest-card-body">
                <div class="rest-card-header">
                    <div class="rest-card-name">Saravana Bhavan</div>
                    <div class="rest-card-rating">★ 4.4</div>
                </div>
                <div class="rest-card-cuisine">South Indian, Pure Veg</div>
                <div class="rest-card-meta">
                    <span>🕐 25 min</span><span class="dot"></span>
                    <span>📍 Adyar</span>
                </div>
            </div>
        </div>

        <div class="rest-card" onclick="goLogin()">
            <div class="rest-card-img">
                <img src="https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500&auto=format" alt="Mathsya Seafood" loading="lazy">
                <div class="promo-badge">🦞 Fresh Catch Today</div>
            </div>
            <div class="rest-card-body">
                <div class="rest-card-header">
                    <div class="rest-card-name">Mathsya - Sea Food Corner</div>
                    <div class="rest-card-rating">★ 4.6</div>
                </div>
                <div class="rest-card-cuisine">Seafood, Coastal</div>
                <div class="rest-card-meta">
                    <span>🕐 40 min</span><span class="dot"></span>
                    <span>📍 Nungambakkam</span>
                </div>
            </div>
        </div>

        <div class="rest-card" onclick="goLogin()">
            <div class="rest-card-img">
                <img src="/FoodOrderingSystem/images/restaurants/restaurant_street_food.png" alt="Chennai Street Bites" loading="lazy" onerror="this.src='https://images.unsplash.com/photo-1601050690117-94f5f6fa8bd7?w=500&auto=format'">
                <div class="discount-tag">₹49 Delivery</div>
            </div>
            <div class="rest-card-body">
                <div class="rest-card-header">
                    <div class="rest-card-name">Chennai Street Bites</div>
                    <div class="rest-card-rating">★ 4.2</div>
                </div>
                <div class="rest-card-cuisine">Street Food, Chaat</div>
                <div class="rest-card-meta">
                    <span>🕐 15 min</span><span class="dot"></span>
                    <span>📍 Egmore</span>
                </div>
            </div>
        </div>

    </div>

    <div style="text-align:center; margin-top: 2rem;">
        <a href="${pageContext.request.contextPath}/register" style="display:inline-flex;align-items:center;gap:8px;padding:14px 36px;border:2px solid var(--primary);color:var(--primary);border-radius:var(--radius-sm);font-weight:700;font-size:0.95rem;transition:all 0.2s;" onmouseover="this.style.background='var(--primary)';this.style.color='white'" onmouseout="this.style.background='transparent';this.style.color='var(--primary)'">
            See all 20 restaurants →
        </a>
    </div>
</div>

<div class="divider"></div>

<!-- ===== EXPLORE BY CUISINE ===== -->
<div class="section">
    <div class="section-title">Explore options near you</div>
    <div class="section-sub">Popular cuisines in Chennai</div>
    <div class="explore-grid">
        <div class="explore-card" onclick="goLogin()">
            <img src="https://images.unsplash.com/photo-1630383249896-424e482df921?w=400&auto=format" alt="South Indian" loading="lazy">
            <div class="ex-overlay"></div>
            <div class="ex-label">South Indian</div>
        </div>
        <div class="explore-card" onclick="goLogin()">
            <img src="https://images.unsplash.com/photo-1642821373181-696a54913e93?w=400&auto=format" alt="Biryani" loading="lazy">
            <div class="ex-overlay"></div>
            <div class="ex-label">Biryani</div>
        </div>
        <div class="explore-card" onclick="goLogin()">
            <img src="https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=400&auto=format" alt="Chettinad" loading="lazy">
            <div class="ex-overlay"></div>
            <div class="ex-label">Chettinad</div>
        </div>
        <div class="explore-card" onclick="goLogin()">
            <img src="https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=400&auto=format" alt="Kerala" loading="lazy">
            <div class="ex-overlay"></div>
            <div class="ex-label">Kerala Specials</div>
        </div>
        <div class="explore-card" onclick="goLogin()">
            <img src="https://images.unsplash.com/photo-1601050690117-94f5f6fa8bd7?w=400&auto=format" alt="Street Food" loading="lazy">
            <div class="ex-overlay"></div>
            <div class="ex-label">Street Food</div>
        </div>
    </div>
</div>

<div class="divider"></div>

<!-- ===== WHY US ===== -->
<div class="why-bg">
    <div class="why-inner">
        <div style="text-align:center;">
            <div class="section-title">Why FoodExpress?</div>
            <div class="section-sub">We make ordering food simple, fast, and delicious</div>
        </div>
        <div class="why-grid">
            <div class="why-card">
                <div class="why-icon">⚡</div>
                <div class="why-title">Lightning Fast Delivery</div>
                <div class="why-desc">Average delivery in 30 minutes or less. Fresh food, hot and on time, every time.</div>
            </div>
            <div class="why-card">
                <div class="why-icon">🍛</div>
                <div class="why-title">Authentic South Indian</div>
                <div class="why-desc">20+ curated restaurants serving genuine Tamil Nadu, Kerala, and Chettinad cuisine.</div>
            </div>
            <div class="why-card">
                <div class="why-icon">💰</div>
                <div class="why-title">Best Prices</div>
                <div class="why-desc">Enjoy great food at honest prices. No hidden charges, no markups.</div>
            </div>
            <div class="why-card">
                <div class="why-icon">🔒</div>
                <div class="why-title">Safe & Secure</div>
                <div class="why-desc">Encrypted payments, real-time order tracking, and dedicated customer support.</div>
            </div>
        </div>
    </div>
</div>

<!-- ===== FOOTER ===== -->
<footer class="footer">
    <div class="footer-inner">
        <div class="footer-top">
            <div class="footer-brand">
                <div class="f-logo">Food<span>Express</span></div>
                <p>Order delicious South Indian food online. Fresh meals from the best restaurants in Chennai, delivered fast to your door.</p>
                <div class="app-badges">
                    <div class="app-badge">📱 App Store</div>
                    <div class="app-badge">▶ Google Play</div>
                </div>
            </div>
            <div class="footer-col">
                <h4>About FoodExpress</h4>
                <ul>
                    <li><a href="#">Who We Are</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">Work With Us</a></li>
                    <li><a href="#">Investor Relations</a></li>
                    <li><a href="#">Report Fraud</a></li>
                    <li><a href="#">Contact Us</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <h4>For Foodies</h4>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/register">Create Account</a></li>
                    <li><a href="${pageContext.request.contextPath}/index.jsp">Sign In</a></li>
                    <li><a href="#">iOS App</a></li>
                    <li><a href="#">Android App</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <h4>For Restaurants</h4>
                <ul>
                    <li><a href="#">Partner With Us</a></li>
                    <li><a href="#">Apps For You</a></li>
                    <li><a href="#">Business App</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <h4>Learn More</h4>
                <ul>
                    <li><a href="#">Privacy</a></li>
                    <li><a href="#">Security</a></li>
                    <li><a href="#">Terms</a></li>
                    <li><a href="#">Sitemap</a></li>
                </ul>
            </div>
        </div>
        <div class="footer-bottom">
            <p>© 2026 FoodExpress India Pvt. Ltd. All rights reserved.</p>
            <div class="social-links">
                <div class="social-link">𝕏</div>
                <div class="social-link">f</div>
                <div class="social-link">in</div>
                <div class="social-link">📷</div>
            </div>
        </div>
    </div>
</footer>

<script>
    function goLogin() {
        window.location.href = '${pageContext.request.contextPath}/index.jsp';
    }
    function searchHero() {
        const q = document.getElementById('heroSearch').value.trim();
        if (q) window.location.href = '${pageContext.request.contextPath}/index.jsp';
        else goLogin();
    }
    function searchFromNav() {
        const q = document.getElementById('navSearch').value.trim();
        if (q) window.location.href = '${pageContext.request.contextPath}/index.jsp';
        else goLogin();
    }
    function filterCategory(name) {
        window.location.href = '${pageContext.request.contextPath}/index.jsp';
    }

    // Chip filter toggle
    document.querySelectorAll('.chip').forEach(chip => {
        chip.addEventListener('click', function() {
            document.querySelectorAll('.chip').forEach(c => c.classList.remove('active'));
            this.classList.add('active');
        });
    });

    // Tab toggle
    document.querySelectorAll('.tab-item').forEach(tab => {
        tab.addEventListener('click', function() {
            document.querySelectorAll('.tab-item').forEach(t => t.classList.remove('active'));
            this.classList.add('active');
        });
    });
</script>
</body>
</html>
