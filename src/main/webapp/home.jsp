<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Browse 100+ restaurants and order food online with FoodExpress — delivered hot to your doorstep.">
    <title>FoodExpress — Home</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700;800;900&family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        /* ============================================================
           RESET & ROOT VARIABLES
        ============================================================ */
        *, *::before, *::after { margin: 0; padding: 0; box-sizing: border-box; }

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
            --shadow-xl: 0 24px 80px rgba(0,0,0,0.18);
            --radius: 18px;
            --radius-sm: 10px;
            --radius-xs: 6px;
            --radius-full: 100px;
            --green: #1DB954;
            --green-bg: rgba(29,185,84,0.1);
            --nav-bg: rgba(250,250,250,0.85);
            --glass: rgba(255,255,255,0.7);
            --glass-border: rgba(255,255,255,0.9);
            --transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        }

        [data-theme="dark"] {
            --primary: #FF6B6B;
            --primary-dark: #E55A5A;
            --primary-glow: rgba(255,107,107,0.2);
            --orange: #FFB347;
            --orange-glow: rgba(255,179,71,0.15);
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
            --shadow-xl: 0 24px 80px rgba(0,0,0,0.7);
            --green: #2ECC71;
            --green-bg: rgba(46,204,113,0.1);
            --nav-bg: rgba(10,10,15,0.88);
            --glass: rgba(22,22,35,0.8);
            --glass-border: rgba(255,255,255,0.06);
        }

        html { scroll-behavior: smooth; }
        body {
            font-family: 'Inter', sans-serif;
            color: var(--text);
            background: var(--bg);
            transition: background 0.4s, color 0.4s;
            overflow-x: hidden;
            -webkit-font-smoothing: antialiased;
        }
        a { text-decoration: none; color: inherit; }
        img { max-width: 100%; display: block; }

        /* ============================================================
           SCROLLBAR
        ============================================================ */
        ::-webkit-scrollbar { width: 6px; }
        ::-webkit-scrollbar-track { background: var(--bg-gray); }
        ::-webkit-scrollbar-thumb { background: var(--border); border-radius: 3px; }
        ::-webkit-scrollbar-thumb:hover { background: var(--primary); }

        /* ============================================================
           NAVBAR — GLASSMORPHISM
        ============================================================ */
        .nav {
            position: sticky; top: 0; z-index: 999;
            background: var(--nav-bg);
            backdrop-filter: blur(24px) saturate(180%);
            -webkit-backdrop-filter: blur(24px) saturate(180%);
            border-bottom: 1px solid var(--glass-border);
            padding: 0 2rem;
            transition: var(--transition);
        }
        .nav-inner {
            max-width: 1320px; margin: 0 auto;
            display: flex; align-items: center; gap: 16px;
            height: 70px;
        }
        .nav-logo {
            font-family: 'Outfit', sans-serif;
            font-size: 1.65rem; font-weight: 900;
            color: var(--primary); letter-spacing: -1.5px;
            flex-shrink: 0;
            background: linear-gradient(135deg, var(--primary), var(--orange));
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
            background-clip: text;
        }
        .nav-logo span {
            background: linear-gradient(135deg, var(--orange), #FFD700);
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        /* Nav Search */
        .nav-search {
            flex: 1; max-width: 360px;
            display: flex; align-items: center;
            background: var(--bg-gray);
            border: 1.5px solid var(--border);
            border-radius: var(--radius-full);
            padding: 8px 16px; gap: 8px;
            transition: var(--transition);
        }
        .nav-search:focus-within {
            border-color: var(--primary);
            background: var(--bg-card);
            box-shadow: 0 0 0 4px var(--primary-glow);
        }
        .nav-search input {
            border: none; background: transparent;
            flex: 1; font-family: 'Inter', sans-serif;
            font-size: 0.875rem; color: var(--text); outline: none;
        }
        .nav-search input::placeholder { color: var(--text-light); }

        /* Nav Actions */
        .nav-actions { margin-left: auto; display: flex; align-items: center; gap: 8px; flex-shrink: 0; }

        .theme-toggle {
            width: 38px; height: 38px; border-radius: 50%;
            border: 1.5px solid var(--border);
            background: var(--glass);
            backdrop-filter: blur(10px);
            font-size: 1rem; cursor: pointer;
            display: flex; align-items: center; justify-content: center;
            transition: var(--transition); color: var(--text);
        }
        .theme-toggle:hover {
            border-color: var(--primary);
            transform: scale(1.1) rotate(15deg);
            box-shadow: 0 0 12px var(--primary-glow);
        }

        .nav-orders-btn {
            display: flex; align-items: center; gap: 6px;
            padding: 8px 14px;
            background: var(--glass);
            backdrop-filter: blur(10px);
            border: 1.5px solid var(--border);
            border-radius: var(--radius-full);
            font-size: 0.82rem; font-weight: 600; color: var(--text-muted);
            transition: var(--transition);
        }
        .nav-orders-btn:hover { border-color: var(--primary); color: var(--primary); }

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
        .nav-cart-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 24px var(--primary-glow);
            filter: brightness(1.05);
        }
        .cart-badge {
            position: absolute; top: -5px; right: -5px;
            background: var(--orange); color: white;
            width: 20px; height: 20px; border-radius: 50%;
            font-size: 0.65rem; font-weight: 800;
            display: flex; align-items: center; justify-content: center;
            border: 2px solid var(--bg);
            animation: pulse 2s infinite;
        }
        @keyframes pulse {
            0%, 100% { box-shadow: 0 0 0 0 var(--orange-glow); }
            50% { box-shadow: 0 0 0 6px transparent; }
        }

        .nav-user-badge {
            display: flex; align-items: center; gap: 8px;
            padding: 5px 12px 5px 5px;
            background: var(--glass);
            backdrop-filter: blur(10px);
            border: 1.5px solid var(--border);
            border-radius: var(--radius-full);
            font-size: 0.83rem; font-weight: 600; color: var(--text-muted);
            cursor: pointer; transition: var(--transition);
        }
        .nav-user-badge:hover { border-color: var(--primary); color: var(--primary); }
        .nav-avatar {
            width: 30px; height: 30px; border-radius: 50%;
            background: linear-gradient(135deg, var(--primary), var(--orange));
            color: white; font-size: 0.78rem; font-weight: 800;
            display: flex; align-items: center; justify-content: center;
            text-transform: uppercase; flex-shrink: 0;
            font-family: 'Outfit', sans-serif;
            overflow: hidden;
        }
        .btn-logout {
            padding: 8px 16px;
            border: 1.5px solid var(--border);
            border-radius: var(--radius-full);
            color: var(--text-muted); font-weight: 600;
            font-size: 0.82rem; background: transparent;
            cursor: pointer; transition: var(--transition);
            font-family: 'Inter', sans-serif;
        }
        .btn-logout:hover { border-color: #FF5252; color: #FF5252; }

        /* Mobile Hamburger */
        .nav-hamburger { display: none; flex-direction: column; gap: 5px; cursor: pointer; padding: 4px; margin-left: 8px; }
        .nav-hamburger span { display: block; width: 22px; height: 2px; background: var(--text); border-radius: 2px; transition: all 0.3s; }
        .nav-hamburger.open span:nth-child(1) { transform: translateY(7px) rotate(45deg); }
        .nav-hamburger.open span:nth-child(2) { opacity: 0; }
        .nav-hamburger.open span:nth-child(3) { transform: translateY(-7px) rotate(-45deg); }
        .mobile-menu {
            display: none; position: fixed; top: 70px; left: 0; right: 0;
            background: var(--nav-bg); backdrop-filter: blur(24px);
            border-bottom: 1px solid var(--glass-border);
            padding: 1rem 1.5rem; z-index: 998;
            flex-direction: column; gap: 0.3rem;
        }
        .mobile-menu.open { display: flex; }
        .mobile-menu a {
            display: block; padding: 12px 16px;
            border-radius: var(--radius-sm);
            font-size: 0.92rem; font-weight: 500;
            color: var(--text-muted); transition: var(--transition);
        }
        .mobile-menu a:hover { background: var(--bg-gray); color: var(--primary); }
        .mobile-menu a.logout-link { color: #FF5252; }

        /* ============================================================
           HERO / WELCOME BANNER — CINEMATIC
        ============================================================ */
        .welcome-banner {
            position: relative; overflow: hidden;
            min-height: 220px;
            background: linear-gradient(135deg, #0D0D0D 0%, #1A0A00 35%, #200810 70%, #0A0A14 100%);
            padding: 3rem 2rem 2.5rem;
            display: flex; align-items: center;
        }
        /* Animated gradient orbs */
        .welcome-banner::before {
            content: '';
            position: absolute; top: -80px; right: -80px;
            width: 400px; height: 400px;
            background: radial-gradient(circle, rgba(255,107,53,0.18) 0%, transparent 70%);
            border-radius: 50%;
            animation: float1 8s ease-in-out infinite;
        }
        .welcome-banner::after {
            content: '';
            position: absolute; bottom: -60px; left: 20%;
            width: 300px; height: 300px;
            background: radial-gradient(circle, rgba(226,55,68,0.14) 0%, transparent 70%);
            border-radius: 50%;
            animation: float2 10s ease-in-out infinite;
        }
        @keyframes float1 { 0%, 100% { transform: translate(0,0) scale(1); } 50% { transform: translate(-30px, 20px) scale(1.1); } }
        @keyframes float2 { 0%, 100% { transform: translate(0,0) scale(1); } 50% { transform: translate(20px, -15px) scale(1.08); } }

        /* Star particles */
        .banner-particles {
            position: absolute; inset: 0; pointer-events: none; overflow: hidden;
        }
        .particle {
            position: absolute; width: 2px; height: 2px;
            background: rgba(255,255,255,0.4); border-radius: 50%;
            animation: twinkle 3s infinite;
        }
        @keyframes twinkle { 0%, 100% { opacity: 0.2; } 50% { opacity: 0.8; } }

        .welcome-content {
            position: relative; z-index: 2;
            max-width: 1320px; margin: 0 auto; width: 100%;
        }
        .welcome-greeting {
            font-family: 'Outfit', sans-serif;
            font-size: clamp(1.6rem, 3.5vw, 2.4rem);
            font-weight: 900; color: white;
            margin-bottom: 0.5rem; line-height: 1.15;
            letter-spacing: -0.5px;
        }
        .welcome-greeting .highlight {
            background: linear-gradient(90deg, var(--orange), #FFD700, var(--orange));
            background-size: 200% auto;
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
            background-clip: text;
            animation: shimmer 3s linear infinite;
        }
        @keyframes shimmer { to { background-position: 200% center; } }

        .welcome-sub { color: rgba(255,255,255,0.5); font-size: 0.92rem; margin-bottom: 1.6rem; }
        .welcome-stats { display: flex; gap: 1.2rem; flex-wrap: wrap; }
        .ws-item {
            background: rgba(255,255,255,0.06);
            border: 1px solid rgba(255,255,255,0.10);
            backdrop-filter: blur(12px);
            border-radius: var(--radius-sm);
            padding: 10px 20px; text-align: center;
            transition: var(--transition);
        }
        .ws-item:hover {
            background: rgba(255,255,255,0.1);
            border-color: rgba(255,107,53,0.4);
            transform: translateY(-2px);
        }
        .ws-num {
            font-family: 'Outfit', sans-serif;
            font-size: 1.35rem; font-weight: 900;
            background: linear-gradient(135deg, var(--orange), #FFD700);
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
            background-clip: text;
        }
        .ws-lbl { font-size: 0.7rem; color: rgba(255,255,255,0.4); margin-top: 1px; text-transform: uppercase; letter-spacing: 0.5px; }

        /* ============================================================
           SEARCH BAR — PREMIUM
        ============================================================ */
        .search-section { max-width: 1320px; margin: 2rem auto; padding: 0 2rem; }
        .search-bar {
            display: flex; align-items: center;
            background: var(--bg-card);
            border: 1.5px solid var(--border);
            border-radius: var(--radius);
            padding: 0; overflow: hidden;
            box-shadow: var(--shadow-md);
            transition: var(--transition);
        }
        .search-bar:focus-within {
            border-color: var(--primary);
            box-shadow: 0 0 0 4px var(--primary-glow), var(--shadow-md);
            transform: translateY(-1px);
        }
        .search-icon-box {
            padding: 14px 18px; color: var(--text-light);
            font-size: 1.05rem; flex-shrink: 0;
        }
        .search-bar input {
            flex: 1; border: none; background: transparent;
            font-family: 'Inter', sans-serif;
            font-size: 0.95rem; color: var(--text); outline: none;
            padding: 14px 0;
        }
        .search-bar input::placeholder { color: var(--text-light); }
        .search-bar button {
            padding: 14px 28px;
            background: linear-gradient(135deg, var(--primary), var(--orange));
            color: white; border: none;
            font-family: 'Outfit', sans-serif; font-weight: 700;
            font-size: 0.92rem; cursor: pointer;
            transition: var(--transition); flex-shrink: 0;
            letter-spacing: 0.3px;
        }
        .search-bar button:hover { filter: brightness(1.08); }

        /* ============================================================
           FILTER CHIPS — ANIMATED
        ============================================================ */
        .filter-section { max-width: 1320px; margin: 0 auto 1.8rem; padding: 0 2rem; }
        .chips { display: flex; gap: 8px; flex-wrap: wrap; }
        .chip {
            display: inline-flex; align-items: center; gap: 5px;
            padding: 8px 18px;
            border: 1.5px solid var(--border);
            border-radius: var(--radius-full);
            font-size: 0.82rem; font-weight: 600;
            color: var(--text-muted); cursor: pointer;
            transition: var(--transition);
            background: var(--glass);
            backdrop-filter: blur(8px);
            white-space: nowrap; text-decoration: none;
            position: relative; overflow: hidden;
        }
        .chip::before {
            content: '';
            position: absolute; inset: 0;
            background: linear-gradient(135deg, var(--primary), var(--orange));
            opacity: 0; transition: opacity 0.3s;
        }
        .chip span { position: relative; z-index: 1; }
        .chip:hover, .chip.active {
            border-color: var(--primary);
            color: var(--primary);
            transform: translateY(-2px);
            box-shadow: 0 4px 16px var(--primary-glow);
        }
        .chip.active {
            background: linear-gradient(135deg, var(--primary), var(--orange));
            color: white; border-color: transparent;
            box-shadow: 0 4px 16px var(--primary-glow);
        }
        .chip.active:hover { color: white; }

        /* ============================================================
           SECTION HEADER
        ============================================================ */
        .section-header {
            max-width: 1320px; margin: 0 auto 1.4rem;
            padding: 0 2rem;
            display: flex; align-items: center; justify-content: space-between;
        }
        .section-title {
            font-family: 'Outfit', sans-serif;
            font-size: 1.5rem; font-weight: 900;
            color: var(--text); letter-spacing: -0.5px;
        }
        .section-sub { color: var(--text-muted); font-size: 0.85rem; margin-top: 3px; }
        .section-count {
            font-size: 0.8rem; color: var(--text-light);
            background: var(--bg-gray);
            padding: 4px 12px; border-radius: var(--radius-full);
            border: 1px solid var(--border);
        }

        /* Search result info */
        .search-result-info { max-width: 1320px; margin: 0 auto 1.2rem; padding: 0 2rem; }
        .search-info-bar {
            display: flex; align-items: center; gap: 10px;
            background: var(--bg-card); border: 1px solid var(--border);
            border-radius: var(--radius-sm); padding: 10px 18px;
            font-size: 0.86rem; color: var(--text-muted);
            box-shadow: var(--shadow-sm);
        }
        .search-info-bar strong { color: var(--text); }
        .clear-search { margin-left: auto; color: var(--primary); font-weight: 600; font-size: 0.82rem; cursor: pointer; text-decoration: none; flex-shrink: 0; }

        /* ============================================================
           RESTAURANT GRID
        ============================================================ */
        .restaurants-section { max-width: 1320px; margin: 0 auto 4rem; padding: 0 2rem; }
        .restaurants-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 1.6rem; }

        /* ============================================================
           RESTAURANT CARD — ULTRA PREMIUM
        ============================================================ */
        .rest-card {
            border-radius: var(--radius); overflow: hidden;
            background: var(--bg-card);
            box-shadow: var(--shadow);
            cursor: pointer;
            transition: var(--transition);
            border: 1px solid var(--border);
            position: relative;
        }
        /* Animated border glow on hover */
        .rest-card::before {
            content: '';
            position: absolute; inset: -1px;
            border-radius: calc(var(--radius) + 1px);
            background: linear-gradient(135deg, var(--primary), var(--orange), var(--primary));
            opacity: 0;
            transition: opacity 0.4s;
            z-index: 0;
        }
        .rest-card:hover::before { opacity: 1; }
        .rest-card > * { position: relative; z-index: 1; }

        .rest-card:hover {
            transform: translateY(-8px) scale(1.01);
            box-shadow: var(--shadow-xl);
        }

        /* Card Image */
        .rest-card-img {
            height: 195px; overflow: hidden; position: relative;
            background: var(--bg-gray);
        }
        .rest-card-img img {
            width: 100%; height: 100%; object-fit: cover;
            transition: transform 0.6s cubic-bezier(0.4, 0, 0.2, 1);
        }
        .rest-card:hover .rest-card-img img { transform: scale(1.1); }

        /* Image overlay — gradient from bottom */
        .img-overlay {
            position: absolute; inset: 0;
            background: linear-gradient(
                to top,
                rgba(0,0,0,0.75) 0%,
                rgba(0,0,0,0.15) 50%,
                transparent 100%
            );
        }

        /* Promo pill */
        .promo-overlay {
            position: absolute; bottom: 10px; left: 10px;
            background: rgba(0,0,0,0.55);
            backdrop-filter: blur(8px);
            border: 1px solid rgba(255,255,255,0.15);
            color: white; font-size: 0.72rem; font-weight: 700;
            padding: 4px 10px; border-radius: var(--radius-full);
            display: flex; align-items: center; gap: 4px;
        }

        /* Discount badge */
        .discount-badge {
            position: absolute; top: 12px; left: 12px;
            background: linear-gradient(135deg, var(--primary), var(--orange));
            color: white; padding: 4px 10px;
            border-radius: var(--radius-xs);
            font-size: 0.7rem; font-weight: 800;
            box-shadow: 0 2px 8px var(--primary-glow);
            letter-spacing: 0.3px;
        }

        /* Veg badge */
        .veg-badge {
            position: absolute; top: 12px; right: 12px;
            background: rgba(29,185,84,0.85);
            backdrop-filter: blur(6px);
            border: 1px solid rgba(29,185,84,0.4);
            color: white; padding: 4px 10px;
            border-radius: var(--radius-xs);
            font-size: 0.68rem; font-weight: 800;
        }

        /* Card Body */
        .rest-card-body {
            padding: 14px 16px 16px;
            background: var(--bg-card);
        }
        .rest-card-header {
            display: flex; justify-content: space-between; align-items: flex-start;
            margin-bottom: 4px;
        }
        .rest-card-name {
            font-family: 'Outfit', sans-serif;
            font-size: 1rem; font-weight: 800;
            color: var(--text); line-height: 1.2;
            transition: color 0.2s;
        }
        .rest-card:hover .rest-card-name { color: var(--primary); }
        .rest-card-rating {
            display: flex; align-items: center; gap: 3px;
            background: var(--green); color: white;
            padding: 3px 9px; border-radius: var(--radius-xs);
            font-size: 0.74rem; font-weight: 800; flex-shrink: 0;
            box-shadow: 0 2px 6px var(--green-bg);
        }
        .rest-card-cuisine {
            font-size: 0.77rem; color: var(--text-muted);
            margin-bottom: 10px; line-height: 1.4;
        }
        .rest-card-meta {
            display: flex; align-items: center; gap: 8px;
            font-size: 0.76rem; color: var(--text-muted);
            padding-top: 10px; border-top: 1px solid var(--border);
        }
        .dot { width: 3px; height: 3px; border-radius: 50%; background: var(--border); flex-shrink: 0; }

        /* ============================================================
           EMPTY STATE
        ============================================================ */
        .empty-state { text-align: center; padding: 5rem 2rem; }
        .empty-icon { font-size: 4.5rem; margin-bottom: 1.2rem; }
        .empty-state h2 {
            font-family: 'Outfit', sans-serif;
            font-size: 1.6rem; font-weight: 800; color: var(--text); margin-bottom: 0.5rem;
        }
        .empty-state p { color: var(--text-muted); margin-bottom: 2rem; }
        .btn-primary {
            display: inline-flex; align-items: center; gap: 8px;
            padding: 12px 28px;
            background: linear-gradient(135deg, var(--primary), var(--orange));
            color: white; border-radius: var(--radius-full);
            font-weight: 700; font-size: 0.92rem;
            transition: var(--transition);
            box-shadow: 0 4px 16px var(--primary-glow);
        }
        .btn-primary:hover { transform: translateY(-2px); filter: brightness(1.05); box-shadow: 0 8px 24px var(--primary-glow); }

        /* ============================================================
           DIVIDER
        ============================================================ */
        .divider { height: 6px; background: var(--bg-gray); transition: background 0.3s; }

        /* ============================================================
           PAGINATION
        ============================================================ */
        .pagination {
            display: flex; justify-content: center; align-items: center;
            gap: 6px; padding: 2.5rem 0; flex-wrap: wrap;
        }
        .page-btn {
            display: inline-flex; align-items: center; justify-content: center;
            min-width: 42px; height: 42px; padding: 0 14px;
            border-radius: var(--radius-full);
            background: var(--bg-card); border: 1.5px solid var(--border);
            color: var(--text-muted); font-size: 0.86rem; font-weight: 700;
            cursor: pointer; transition: var(--transition); text-decoration: none;
        }
        .page-btn:hover { border-color: var(--primary); color: var(--primary); transform: translateY(-1px); }
        .page-btn.active {
            background: linear-gradient(135deg, var(--primary), var(--orange));
            border-color: transparent; color: white;
            box-shadow: 0 4px 16px var(--primary-glow);
        }
        .page-btn.disabled { opacity: 0.35; cursor: not-allowed; }

        /* ============================================================
           CARD SKELETON ANIMATION (for loading feel)
        ============================================================ */
        @keyframes fadeUp {
            from { opacity: 0; transform: translateY(24px); }
            to   { opacity: 1; transform: translateY(0); }
        }
        .rest-card {
            animation: fadeUp 0.5s ease both;
        }

        /* ============================================================
           RESPONSIVE
        ============================================================ */
        @media (max-width: 1100px) { .restaurants-grid { grid-template-columns: repeat(2, 1fr); } }
        @media (max-width: 768px) {
            .nav-search, .nav-orders-btn, .btn-logout { display: none; }
            .nav-hamburger { display: flex; }
            .restaurants-grid { grid-template-columns: 1fr; }
            .welcome-banner { padding: 2rem 1.5rem; }
            .search-section, .filter-section, .restaurants-section { padding: 0 1rem; }
            .section-header { padding: 0 1rem; }
            .nav { padding: 0 1rem; }
        }
        @media (max-width: 480px) {
            .welcome-stats { gap: 0.6rem; }
            .ws-item { padding: 8px 14px; }
            .nav-cart-btn span.cart-label { display: none; }
        }
    </style>
</head>
<body>
<!-- INLINE THEME APPLY — no flash -->
<script>
(function() {
    var t = localStorage.getItem('fe-theme') || 'dark';
    document.documentElement.setAttribute('data-theme', t);
})();
</script>

<!-- ============================================================
     NAVBAR
============================================================ -->
<nav class="nav">
    <div class="nav-inner">
        <a href="${pageContext.request.contextPath}/home" class="nav-logo">Food<span>Express</span></a>

        <form class="nav-search" action="${pageContext.request.contextPath}/home" method="GET">
            <span style="color:var(--text-light);">&#128269;</span>
            <input type="text" name="search" placeholder="Search restaurants or cuisines..." value="<c:out value='${searchQuery}'/>">
        </form>

        <div class="nav-actions">
            <button class="theme-toggle" id="themeToggle" onclick="toggleTheme()" title="Toggle theme">&#9728;&#65039;</button>
            <a href="${pageContext.request.contextPath}/order-history" class="nav-orders-btn">&#129534; Orders</a>
            <a href="${pageContext.request.contextPath}/cart" class="nav-cart-btn">
                &#128722; <span class="cart-label">Cart</span>
                <c:if test="${not empty sessionScope.cartCount && sessionScope.cartCount > 0}">
                    <span class="cart-badge"><c:out value="${sessionScope.cartCount}"/></span>
                </c:if>
            </a>
            <a href="${pageContext.request.contextPath}/profile.jsp" class="nav-user-badge" id="navUserBadge">
                <div class="nav-avatar" id="navAvatar"><c:out value="${fn:substring(sessionScope.userName, 0, 1)}"/></div>
                <span><c:out value="${sessionScope.userName}"/></span>
            </a>
            <a href="${pageContext.request.contextPath}/logout" class="btn-logout">Logout</a>
        </div>

        <div class="nav-hamburger" id="hamburger" onclick="toggleMobileMenu()">
            <span></span><span></span><span></span>
        </div>
    </div>
</nav>

<!-- Mobile Menu -->
<div class="mobile-menu" id="mobileMenu">
    <a href="${pageContext.request.contextPath}/home">&#127968; Home</a>
    <a href="${pageContext.request.contextPath}/order-history">&#129534; My Orders</a>
    <a href="${pageContext.request.contextPath}/cart">&#128722; Cart</a>
    <a href="${pageContext.request.contextPath}/profile.jsp">&#128100; Profile</a>
    <a href="${pageContext.request.contextPath}/logout" class="logout-link">&#128682; Logout</a>
</div>

<!-- ============================================================
     WELCOME BANNER — CINEMATIC
============================================================ -->
<div class="welcome-banner">
    <!-- Particle dots -->
    <div class="banner-particles" id="particles"></div>

    <div class="welcome-content">
        <div class="welcome-greeting">
            Good <span class="highlight" id="greetingTime">Evening</span>,
            <span class="highlight"><c:out value="${sessionScope.userName}"/></span>! &#128075;
        </div>
        <div class="welcome-sub">What are you craving today? Explore restaurants near you.</div>
        <div class="welcome-stats">
            <div class="ws-item"><div class="ws-num">100+</div><div class="ws-lbl">Restaurants</div></div>
            <div class="ws-item"><div class="ws-num">25–35</div><div class="ws-lbl">Min Delivery</div></div>
            <div class="ws-item"><div class="ws-num">500+</div><div class="ws-lbl">Dishes</div></div>
            <div class="ws-item"><div class="ws-num">&#9733; 4.5</div><div class="ws-lbl">Avg Rating</div></div>
        </div>
    </div>
</div>

<div class="divider"></div>

<!-- ============================================================
     MAIN SEARCH
============================================================ -->
<div class="search-section">
    <form class="search-bar" action="${pageContext.request.contextPath}/home" method="GET">
        <div class="search-icon-box">&#128269;</div>
        <input type="text" name="search" id="searchInput"
               placeholder="Search restaurants, cuisines, or dishes..."
               value="<c:out value='${searchQuery}'/>" autocomplete="off">
        <button type="submit">Search</button>
    </form>
</div>

<!-- Search Info Bar -->
<c:if test="${not empty searchQuery}">
    <div class="search-result-info">
        <div class="search-info-bar">
            &#128269; Results for &ldquo;<strong><c:out value="${searchQuery}"/></strong>&rdquo;
            &mdash; <c:out value="${totalCount}"/> restaurant(s) found
            <a href="${pageContext.request.contextPath}/home" class="clear-search">&#10005; Clear</a>
        </div>
    </div>
</c:if>

<!-- ============================================================
     FILTER CHIPS
============================================================ -->
<div class="filter-section">
    <div class="chips">
        <a class="chip ${empty searchQuery ? 'active' : ''}" href="${pageContext.request.contextPath}/home"><span>&#127869; All</span></a>
        <a class="chip ${searchQuery == 'Pure Veg' ? 'active' : ''}" href="${pageContext.request.contextPath}/home?search=Pure+Veg"><span>&#129367; Pure Veg</span></a>
        <a class="chip ${searchQuery == 'Non-Veg' ? 'active' : ''}" href="${pageContext.request.contextPath}/home?search=Non-Veg"><span>&#127831; Non-Veg</span></a>
        <a class="chip ${searchQuery == 'Biryani' ? 'active' : ''}" href="${pageContext.request.contextPath}/home?search=Biryani"><span>&#129375; Biryani</span></a>
        <a class="chip ${searchQuery == 'Chettinad' ? 'active' : ''}" href="${pageContext.request.contextPath}/home?search=Chettinad"><span>&#127859; Chettinad</span></a>
        <a class="chip ${searchQuery == 'South Indian' ? 'active' : ''}" href="${pageContext.request.contextPath}/home?search=South+Indian"><span>&#127758; South Indian</span></a>
        <a class="chip ${searchQuery == 'Seafood' ? 'active' : ''}" href="${pageContext.request.contextPath}/home?search=Seafood"><span>&#128031; Seafood</span></a>
        <a class="chip ${searchQuery == 'Pizza' ? 'active' : ''}" href="${pageContext.request.contextPath}/home?search=Pizza"><span>&#127829; Pizza</span></a>
        <a class="chip ${searchQuery == 'Fast Food' ? 'active' : ''}" href="${pageContext.request.contextPath}/home?search=Fast+Food"><span>&#127828; Fast Food</span></a>
    </div>
</div>

<!-- ============================================================
     SECTION HEADER
============================================================ -->
<div class="section-header">
    <div>
        <div class="section-title">
            <c:choose>
                <c:when test="${searchQuery == 'Pure Veg'}">&#129367; Pure Veg Restaurants</c:when>
                <c:when test="${searchQuery == 'Non-Veg'}">&#127831; Non-Veg Restaurants</c:when>
                <c:when test="${searchQuery == 'Biryani'}">&#129375; Biryani Restaurants</c:when>
                <c:when test="${searchQuery == 'Chettinad'}">&#127859; Chettinad Restaurants</c:when>
                <c:when test="${searchQuery == 'South Indian'}">&#127758; South Indian Restaurants</c:when>
                <c:when test="${searchQuery == 'Seafood'}">&#128031; Seafood Restaurants</c:when>
                <c:when test="${searchQuery == 'Pizza'}">&#127829; Pizza Places</c:when>
                <c:when test="${searchQuery == 'Fast Food'}">&#127828; Fast Food Near You</c:when>
                <c:when test="${not empty searchQuery}">&#128269; Results for &ldquo;<c:out value='${searchQuery}'/>&rdquo;</c:when>
                <c:otherwise>&#128293; All Restaurants Near You</c:otherwise>
            </c:choose>
        </div>
        <div class="section-sub">Order food online &mdash; delivered hot to your doorstep</div>
    </div>
    <c:if test="${not empty totalCount}">
        <div class="section-count"><c:out value="${totalCount}"/> restaurants</div>
    </c:if>
</div>

<!-- ============================================================
     RESTAURANT CARDS
============================================================ -->
<div class="restaurants-section">
    <c:choose>
        <c:when test="${not empty restaurants}">
            <div class="restaurants-grid">
                <c:forEach var="restaurant" items="${restaurants}" varStatus="status">
                    <div class="rest-card"
                         onclick="window.location.href='${pageContext.request.contextPath}/menu?restaurantId=${restaurant.id}'"
                         style="animation-delay:${status.index * 0.05}s">
                        <div class="rest-card-img">
                            <img src="<c:out value='${restaurant.imageUrl}'/>"
                                 alt="<c:out value='${restaurant.name}'/>"
                                 onerror="this.onerror=null;this.src='https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?w=600&auto=format'"
                                 loading="lazy">
                            <div class="img-overlay"></div>
                            <div class="promo-overlay">&#9889; Free Delivery above &#8377;199</div>
                            <c:if test="${fn:contains(fn:toUpperCase(restaurant.cuisine), 'PURE VEG') || (fn:contains(fn:toUpperCase(restaurant.cuisine), 'VEG') && !fn:contains(fn:toUpperCase(restaurant.cuisine), 'NON-VEG'))}">
                                <div class="veg-badge">&#129367; Pure Veg</div>
                            </c:if>
                        </div>
                        <div class="rest-card-body">
                            <div class="rest-card-header">
                                <div class="rest-card-name"><c:out value="${restaurant.name}"/></div>
                                <div class="rest-card-rating">&#9733; <c:out value="${restaurant.rating}"/></div>
                            </div>
                            <div class="rest-card-cuisine">
                                <c:out value="${fn:substring(restaurant.cuisine, 0, 50)}"/><c:if test="${fn:length(restaurant.cuisine) > 50}">…</c:if>
                            </div>
                            <div class="rest-card-meta">
                                <span>&#128336; <c:out value="${restaurant.deliveryTime}"/> min</span>
                                <div class="dot"></div>
                                <span>&#128205; Nearby</span>
                                <div class="dot"></div>
                                <c:choose>
                                    <c:when test="${fn:contains(fn:toUpperCase(restaurant.cuisine), 'PURE VEG')}">
                                        <span style="color:var(--green);font-weight:700;">VEG</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span style="color:var(--primary);font-weight:700;">NON-VEG</span>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </c:when>
        <c:otherwise>
            <div class="empty-state">
                <div class="empty-icon">&#127869;</div>
                <h2>No restaurants found</h2>
                <p>Try a different search term or browse all restaurants</p>
                <a href="${pageContext.request.contextPath}/home" class="btn-primary">View All Restaurants</a>
            </div>
        </c:otherwise>
    </c:choose>

    <!-- PAGINATION -->
    <c:if test="${empty searchQuery && totalPages > 1}">
        <div class="pagination">
            <c:choose>
                <c:when test="${currentPage > 1}">
                    <a href="${pageContext.request.contextPath}/home?page=${currentPage - 1}" class="page-btn">&#8592; Prev</a>
                </c:when>
                <c:otherwise><span class="page-btn disabled">&#8592; Prev</span></c:otherwise>
            </c:choose>
            <c:forEach begin="1" end="${totalPages}" var="p">
                <c:choose>
                    <c:when test="${p == currentPage}"><span class="page-btn active"><c:out value="${p}"/></span></c:when>
                    <c:otherwise><a href="${pageContext.request.contextPath}/home?page=${p}" class="page-btn"><c:out value="${p}"/></a></c:otherwise>
                </c:choose>
            </c:forEach>
            <c:choose>
                <c:when test="${currentPage < totalPages}">
                    <a href="${pageContext.request.contextPath}/home?page=${currentPage + 1}" class="page-btn">Next &#8594;</a>
                </c:when>
                <c:otherwise><span class="page-btn disabled">Next &#8594;</span></c:otherwise>
            </c:choose>
        </div>
        <p style="text-align:center;color:var(--text-light);font-size:0.76rem;padding-bottom:2rem;">
            Page <c:out value="${currentPage}"/> of <c:out value="${totalPages}"/> &bull; <c:out value="${totalCount}"/> restaurants total
        </p>
    </c:if>
</div>

<!-- ============================================================
     SCRIPTS
============================================================ -->
<script>
    /* ── THEME ── */
    function toggleTheme() {
        var html = document.documentElement;
        var next = html.getAttribute('data-theme') === 'dark' ? 'light' : 'dark';
        html.setAttribute('data-theme', next);
        localStorage.setItem('fe-theme', next);
        updateThemeIcon(next);
    }
    function updateThemeIcon(t) {
        var btn = document.getElementById('themeToggle');
        if (btn) btn.innerHTML = t === 'dark' ? '&#9728;&#65039;' : '&#127769;';
    }
    window.addEventListener('storage', function(e) {
        if (e.key === 'fe-theme' && e.newValue) {
            document.documentElement.setAttribute('data-theme', e.newValue);
            updateThemeIcon(e.newValue);
        }
    });

    /* ── MOBILE MENU ── */
    function toggleMobileMenu() {
        document.getElementById('mobileMenu').classList.toggle('open');
        document.getElementById('hamburger').classList.toggle('open');
    }

    /* ── INIT ── */
    document.addEventListener('DOMContentLoaded', function() {
        /* Theme icon */
        var t = localStorage.getItem('fe-theme') || 'dark';
        updateThemeIcon(t);

        /* Greeting */
        var hour = new Date().getHours();
        var greet = hour < 12 ? 'Morning' : hour < 17 ? 'Afternoon' : 'Evening';
        var el = document.getElementById('greetingTime');
        if (el) el.textContent = greet;

        /* Avatar from localStorage */
        var savedAvatar = localStorage.getItem('fe-avatar-url');
        var navAv = document.getElementById('navAvatar');
        if (savedAvatar && navAv) {
            navAv.innerHTML = '<img src="'+savedAvatar+'" style="width:100%;height:100%;border-radius:50%;object-fit:cover;" alt="Avatar">';
        }

        /* Generate particles */
        var container = document.getElementById('particles');
        if (container) {
            for (var i = 0; i < 30; i++) {
                var p = document.createElement('div');
                p.className = 'particle';
                p.style.cssText = 'left:'+Math.random()*100+'%;top:'+Math.random()*100+'%;animation-delay:'+Math.random()*3+'s;animation-duration:'+(2+Math.random()*3)+'s;';
                container.appendChild(p);
            }
        }
    });
</script>
</body>
</html>
