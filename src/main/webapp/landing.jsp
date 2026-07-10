<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // If already logged in → go to home directly
    if (session.getAttribute("user") != null) {
        response.sendRedirect(request.getContextPath() + "/home");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="FoodExpress — Order food from 100+ restaurants. Delivered hot, every time.">
    <title>FoodExpress — Delivered Hot. Every Time.</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700;800;900&family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        *, *::before, *::after { margin:0; padding:0; box-sizing:border-box; }

        /* ── DARK MODE (default) ── */
        :root, [data-theme="dark"] {
            --primary: #E23744;
            --orange: #FF6B35;
            --gold: #FFD700;
            --primary-glow: rgba(226,55,68,0.3);
            --orange-glow: rgba(255,107,53,0.2);
            --bg: #0A0A0F;
            --bg2: #0F0F1A;
            --text: #F0F0FF;
            --text-muted: rgba(240,240,255,0.55);
            --border: rgba(255,255,255,0.07);
            --glass: rgba(255,255,255,0.05);
            --nav-bg: rgba(10,10,15,0.75);
            --feature-bg: rgba(255,255,255,0.05);
            --feature-hover: rgba(255,255,255,0.07);
            --footer-bg: transparent;
            --radius: 18px;
            --radius-full: 100px;
            --transition: all 0.35s cubic-bezier(0.4,0,0.2,1);
        }

        /* ── LIGHT MODE ── */
        [data-theme="light"] {
            --primary: #D62B38;
            --orange: #F05A28;
            --gold: #E6A800;
            --primary-glow: rgba(214,43,56,0.2);
            --orange-glow: rgba(240,90,40,0.15);
            --bg: #FFFFFF;
            --bg2: #F8F8FB;
            --text: #111111;
            --text-muted: rgba(17,17,17,0.55);
            --border: rgba(0,0,0,0.1);
            --glass: rgba(0,0,0,0.03);
            --nav-bg: rgba(255,255,255,0.88);
            --feature-bg: #F8F8FB;
            --feature-hover: #F0F0F7;
            --footer-bg: #F8F8FB;
        }

        html { scroll-behavior: smooth; overflow-x: hidden; }
        body {
            font-family: 'Inter', sans-serif;
            background: var(--bg);
            color: var(--text);
            -webkit-font-smoothing: antialiased;
            overflow-x: hidden;
            transition: background 0.4s, color 0.4s;
        }

        /* ── ANIMATED BACKGROUND ── */
        .bg-layer {
            position: fixed; inset: 0; z-index: 0; pointer-events: none;
            overflow: hidden;
        }
        .orb {
            position: absolute; border-radius: 50%;
            filter: blur(80px); opacity: 0.5;
            animation: orbFloat 8s ease-in-out infinite alternate;
        }
        .orb1 { width:600px; height:600px; top:-200px; right:-100px; background:radial-gradient(circle, rgba(226,55,68,0.35) 0%, transparent 70%); animation-delay:0s; }
        .orb2 { width:500px; height:500px; bottom:-200px; left:-100px; background:radial-gradient(circle, rgba(255,107,53,0.25) 0%, transparent 70%); animation-delay:-3s; }
        .orb3 { width:400px; height:400px; top:40%; left:40%; background:radial-gradient(circle, rgba(100,0,255,0.1) 0%, transparent 70%); animation-delay:-5s; }
        @keyframes orbFloat {
            from { transform: translate(0,0) scale(1); }
            to { transform: translate(40px,30px) scale(1.08); }
        }

        /* ── NAVBAR ── */
        .nav {
            position: fixed; top: 0; left: 0; right: 0; z-index: 100;
            padding: 0 2.5rem;
            border-bottom: 1px solid var(--border);
            backdrop-filter: blur(24px) saturate(180%);
            -webkit-backdrop-filter: blur(24px) saturate(180%);
            background: var(--nav-bg);
            transition: background 0.4s, border-color 0.4s;
        }
        .nav-inner {
            max-width: 1280px; margin: 0 auto;
            display: flex; align-items: center; height: 70px; gap: 16px;
        }
        .nav-logo {
            font-family: 'Outfit', sans-serif;
            font-size: 1.7rem; font-weight: 900; letter-spacing:-1.5px;
            background: linear-gradient(135deg, var(--primary), var(--orange));
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
            background-clip: text; flex-shrink: 0;
        }
        .nav-logo span {
            background: linear-gradient(135deg, var(--orange), var(--gold));
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
            background-clip: text;
        }
        .nav-spacer { flex: 1; }
        .nav-links { display: flex; align-items: center; gap: 8px; }

        .btn-ghost {
            padding: 9px 18px; border-radius: var(--radius-full);
            border: 1.5px solid var(--border);
            color: rgba(255,255,255,0.7); font-weight: 600; font-size: 0.875rem;
            cursor: pointer; transition: var(--transition);
            text-decoration: none; display: inline-flex; align-items: center; gap: 6px;
            background: var(--glass);
            backdrop-filter: blur(8px);
        }
        .btn-ghost:hover { border-color: var(--primary); color: var(--primary); transform: translateY(-1px); }

        .btn-primary {
            padding: 9px 22px; border-radius: var(--radius-full);
            background: linear-gradient(135deg, var(--primary), var(--orange));
            color: white; font-weight: 700; font-size: 0.875rem;
            cursor: pointer; transition: var(--transition);
            text-decoration: none; display: inline-flex; align-items: center; gap: 6px;
            box-shadow: 0 4px 16px var(--primary-glow);
            border: none;
        }
        .btn-primary:hover { transform: translateY(-2px); box-shadow: 0 8px 28px var(--primary-glow); filter:brightness(1.08); }

        /* ── HERO ── */
        .hero {
            position: relative; z-index: 1;
            min-height: 100vh;
            display: flex; align-items: center; justify-content: center;
            padding: 100px 2.5rem 4rem;
            text-align: center;
        }
        .hero-inner { max-width: 800px; margin: 0 auto; }

        .hero-tag {
            display: inline-flex; align-items: center; gap: 8px;
            padding: 7px 18px; border-radius: var(--radius-full);
            background: rgba(226,55,68,0.12);
            border: 1px solid rgba(226,55,68,0.25);
            color: var(--primary); font-size: 0.82rem; font-weight: 700;
            margin-bottom: 2rem; letter-spacing: 0.3px;
            animation: fadeDown 0.6s ease both;
        }
        .tag-dot { width:8px; height:8px; border-radius:50%; background:var(--primary); animation:blink 1.5s ease infinite; }
        @keyframes blink { 0%,100%{opacity:1;} 50%{opacity:0.3;} }

        .hero-title {
            font-family: 'Outfit', sans-serif;
            font-size: clamp(2.6rem, 7vw, 5rem);
            font-weight: 900; line-height: 1.05;
            letter-spacing: -2px;
            margin-bottom: 1.5rem;
            animation: fadeUp 0.7s ease 0.1s both;
        }
        .hero-title .line1 { display: block; color: var(--text); }
        .hero-title .line2 {
            display: block;
            background: linear-gradient(135deg, var(--primary) 0%, var(--orange) 50%, var(--gold) 100%);
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
            background-clip: text;
            background-size: 200% auto;
            animation: shimmer 3s linear infinite, fadeUp 0.7s ease 0.1s both;
        }
        @keyframes shimmer { to { background-position: 200% center; } }

        .hero-subtitle {
            color: var(--text-muted);
            font-size: clamp(1rem, 2.5vw, 1.2rem);
            line-height: 1.65; max-width: 560px; margin: 0 auto 2.5rem;
            animation: fadeUp 0.7s ease 0.2s both;
        }

        /* CTA buttons */
        .hero-cta {
            display: flex; align-items: center; justify-content: center;
            gap: 12px; flex-wrap: wrap;
            animation: fadeUp 0.7s ease 0.3s both;
        }
        .btn-hero {
            padding: 14px 34px; border-radius: var(--radius-full);
            font-family: 'Outfit', sans-serif; font-size: 1rem; font-weight: 800;
            cursor: pointer; transition: var(--transition);
            text-decoration: none; display: inline-flex; align-items: center; gap: 8px;
        }
        .btn-hero-primary {
            background: linear-gradient(135deg, var(--primary), var(--orange));
            color: white; border: none;
            box-shadow: 0 6px 24px var(--primary-glow);
        }
        .btn-hero-primary:hover { transform: translateY(-3px) scale(1.02); box-shadow: 0 12px 36px var(--primary-glow); }
        .btn-hero-secondary {
            background: var(--glass); border: 1.5px solid var(--border);
            color: var(--text); backdrop-filter: blur(10px);
        }
        .btn-hero-secondary:hover { border-color: rgba(255,255,255,0.2); transform: translateY(-2px); background: rgba(255,255,255,0.08); }

        /* Stats row */
        .hero-stats {
            display: flex; align-items: center; justify-content: center; gap: 40px;
            margin-top: 3.5rem; flex-wrap: wrap;
            animation: fadeUp 0.7s ease 0.45s both;
        }
        .stat-item { text-align: center; }
        .stat-num {
            font-family: 'Outfit', sans-serif;
            font-size: 2rem; font-weight: 900;
            background: linear-gradient(135deg, var(--primary), var(--orange));
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
            background-clip: text; line-height: 1;
        }
        .stat-label { font-size: 0.78rem; color: var(--text-muted); margin-top: 4px; letter-spacing: 0.5px; text-transform: uppercase; }
        .stat-sep { width: 1px; height: 40px; background: var(--border); }

        /* ── FOOD CARDS ROW ── */
        .food-strip {
            position: relative; z-index: 1;
            padding: 1rem 0 5rem;
            overflow: hidden;
        }
        .food-strip-title {
            text-align: center; font-family: 'Outfit', sans-serif;
            font-size: 1.6rem; font-weight: 800; margin-bottom: 2rem;
            color: var(--text);
        }
        .food-strip-title span {
            background: linear-gradient(135deg, var(--primary), var(--orange));
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .scroll-track {
            display: flex; gap: 16px;
            animation: scrollLeft 30s linear infinite;
            width: max-content;
        }
        .scroll-track:hover { animation-play-state: paused; }
        @keyframes scrollLeft {
            from { transform: translateX(0); }
            to { transform: translateX(-50%); }
        }

        .food-card-mini {
            width: 200px; height: 200px; border-radius: var(--radius);
            overflow: hidden; flex-shrink: 0;
            position: relative;
            border: 1px solid var(--border);
        }
        .food-card-mini img {
            width: 100%; height: 100%; object-fit: cover;
            transition: transform 0.5s ease;
        }
        .food-card-mini:hover img { transform: scale(1.08); }
        .food-card-mini-label {
            position: absolute; bottom: 0; left: 0; right: 0;
            padding: 10px 12px;
            background: linear-gradient(to top, rgba(0,0,0,0.85), transparent);
            font-size: 0.82rem; font-weight: 700; color: white;
        }

        /* ── FEATURES ── */
        .features {
            position: relative; z-index: 1;
            max-width: 1100px; margin: 0 auto;
            padding: 4rem 2.5rem;
        }
        .features-title {
            text-align: center; font-family: 'Outfit', sans-serif;
            font-size: 1.6rem; font-weight: 800;
            margin-bottom: 2.5rem; color: var(--text);
        }
        .features-grid { display: grid; grid-template-columns: repeat(3,1fr); gap: 1.2rem; }
        .feature-card {
            background: var(--feature-bg); border: 1px solid var(--border);
            border-radius: var(--radius); padding: 28px 24px;
            backdrop-filter: blur(10px);
            transition: var(--transition);
        }
        .feature-card:hover { border-color: rgba(226,55,68,0.3); transform: translateY(-4px); background: var(--feature-hover); }
        .feature-icon { font-size: 2.2rem; margin-bottom: 14px; }
        .feature-title { font-family: 'Outfit', sans-serif; font-size: 1.05rem; font-weight: 800; margin-bottom: 8px; }
        .feature-desc { font-size: 0.85rem; color: var(--text-muted); line-height: 1.6; }

        /* ── FINAL CTA ── */
        .final-cta {
            position: relative; z-index: 1;
            text-align: center; padding: 5rem 2.5rem 6rem;
        }
        .final-cta-box {
            max-width: 620px; margin: 0 auto;
            background: linear-gradient(135deg, rgba(226,55,68,0.12), rgba(255,107,53,0.08));
            border: 1px solid rgba(226,55,68,0.2);
            border-radius: 28px; padding: 3.5rem 2.5rem;
            backdrop-filter: blur(20px);
        }
        .final-cta h2 {
            font-family: 'Outfit', sans-serif;
            font-size: clamp(1.8rem, 4vw, 2.4rem);
            font-weight: 900; margin-bottom: 1rem; letter-spacing: -0.5px;
        }
        .final-cta p { color: var(--text-muted); margin-bottom: 2rem; font-size: 0.95rem; }
        .final-cta-btns { display: flex; align-items: center; justify-content: center; gap: 12px; flex-wrap: wrap; }

        /* FOOTER */
        .footer {
            position: relative; z-index: 1;
            border-top: 1px solid var(--border);
            padding: 2rem 2.5rem;
            text-align: center; color: var(--text-muted); font-size: 0.8rem;
        }
        .footer-logo {
            font-family: 'Outfit', sans-serif; font-size: 1.2rem; font-weight: 900;
            background: linear-gradient(135deg, var(--primary), var(--orange));
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
            background-clip: text; margin-bottom: 6px;
        }

        @keyframes fadeUp { from{opacity:0;transform:translateY(24px);} to{opacity:1;transform:translateY(0);} }
        @keyframes fadeDown { from{opacity:0;transform:translateY(-12px);} to{opacity:1;transform:translateY(0);} }

        /* Theme toggle */
        .theme-toggle {
            width: 38px; height: 38px; border-radius: 50%;
            border: 1.5px solid var(--border);
            background: var(--glass); backdrop-filter: blur(10px);
            font-size: 1rem; cursor: pointer;
            display: flex; align-items: center; justify-content: center;
            transition: var(--transition); color: var(--text);
            flex-shrink: 0;
        }
        .theme-toggle:hover { border-color: var(--primary); transform: scale(1.1) rotate(15deg); }

        @media (max-width: 768px) {
            .features-grid { grid-template-columns: 1fr; }
            .hero-stats { gap: 24px; }
            .stat-sep { display:none; }
            .nav-links { gap: 6px; }
            .btn-ghost { padding: 7px 12px; font-size: 0.8rem; }
        }
    </style>
</head>
<body>
<!-- Inline theme init — runs before render to avoid flash -->
<script>
(function(){
    var t = localStorage.getItem('fe-theme') || 'dark';
    document.documentElement.setAttribute('data-theme', t);
})();
</script>

<!-- Animated BG -->
<div class="bg-layer">
    <div class="orb orb1"></div>
    <div class="orb orb2"></div>
    <div class="orb orb3"></div>
</div>

<!-- NAV -->
<nav class="nav">
    <div class="nav-inner">
        <div class="nav-logo">Food<span>Express</span></div>
        <div class="nav-spacer"></div>
        <div class="nav-links">
            <button class="theme-toggle" id="themeToggle" onclick="toggleTheme()" title="Toggle dark/light mode">&#9728;&#65039;</button>
            <a href="${pageContext.request.contextPath}/login" class="btn-ghost">&#128274; Sign In</a>
            <a href="${pageContext.request.contextPath}/register" class="btn-primary">&#9889; Get Started</a>
        </div>
    </div>
</nav>

<!-- HERO -->
<section class="hero">
    <div class="hero-inner">
        <div class="hero-tag">
            <div class="tag-dot"></div>
            &#127869; 100+ Restaurants · 25 Min Delivery
        </div>

        <h1 class="hero-title">
            <span class="line1">Hunger ends here.</span>
            <span class="line2">Order in seconds.</span>
        </h1>

        <p class="hero-subtitle">
            Discover restaurants around you, browse menus, and get your favourite food
            delivered hot &amp; fresh — every single time.
        </p>

        <div class="hero-cta">
            <a href="${pageContext.request.contextPath}/register" class="btn-hero btn-hero-primary">
                &#9889; Start Ordering — It's Free
            </a>
            <a href="${pageContext.request.contextPath}/login" class="btn-hero btn-hero-secondary">
                &#128274; Sign In
            </a>
        </div>

        <div class="hero-stats">
            <div class="stat-item">
                <div class="stat-num" id="countRest">0</div>
                <div class="stat-label">Restaurants</div>
            </div>
            <div class="stat-sep"></div>
            <div class="stat-item">
                <div class="stat-num">25</div>
                <div class="stat-label">Min Avg Delivery</div>
            </div>
            <div class="stat-sep"></div>
            <div class="stat-item">
                <div class="stat-num">4.8<span style="font-size:1.2rem;">&#9733;</span></div>
                <div class="stat-label">Avg Rating</div>
            </div>
            <div class="stat-sep"></div>
            <div class="stat-item">
                <div class="stat-num">FREE</div>
                <div class="stat-label">Delivery above ₹199</div>
            </div>
        </div>
    </div>
</section>

<!-- FOOD SCROLL STRIP -->
<section class="food-strip">
    <div class="food-strip-title">Explore <span>delicious</span> cuisines</div>
    <div style="overflow:hidden; mask-image:linear-gradient(to right,transparent,black 10%,black 90%,transparent); -webkit-mask-image:linear-gradient(to right,transparent,black 10%,black 90%,transparent);">
        <div class="scroll-track" id="scrollTrack">
            <!-- Cards duplicated for infinite scroll -->
        </div>
    </div>
</section>

<!-- FEATURES -->
<section class="features">
    <div class="features-title">Why choose FoodExpress?</div>
    <div class="features-grid">
        <div class="feature-card">
            <div class="feature-icon">&#9889;</div>
            <div class="feature-title">Lightning Fast Delivery</div>
            <div class="feature-desc">Average delivery time of just 25 minutes. Real-time order tracking so you always know where your food is.</div>
        </div>
        <div class="feature-card">
            <div class="feature-icon">&#127869;</div>
            <div class="feature-title">100+ Restaurants</div>
            <div class="feature-desc">Explore a wide variety of cuisines — from South Indian classics to Italian, Chinese, Continental &amp; more.</div>
        </div>
        <div class="feature-card">
            <div class="feature-icon">&#128181;</div>
            <div class="feature-title">Best Prices</div>
            <div class="feature-desc">Free delivery above ₹199. No hidden charges. What you see is what you pay — always.</div>
        </div>
        <div class="feature-card">
            <div class="feature-icon">&#128274;</div>
            <div class="feature-title">Secure &amp; Safe</div>
            <div class="feature-desc">Multiple secure payment options — Cash, UPI, Cards, Wallets. Your data is always protected.</div>
        </div>
        <div class="feature-card">
            <div class="feature-icon">&#11088;</div>
            <div class="feature-title">Rated 4.8 Stars</div>
            <div class="feature-desc">Trusted by thousands of happy customers. Only the best-rated restaurants make it to FoodExpress.</div>
        </div>
        <div class="feature-card">
            <div class="feature-icon">&#128247;</div>
            <div class="feature-title">Easy Ordering</div>
            <div class="feature-desc">Browse, add to cart, checkout — in under 60 seconds. Reorder your favourites with one click.</div>
        </div>
    </div>
</section>

<!-- FINAL CTA -->
<section class="final-cta">
    <div class="final-cta-box">
        <h2>Ready to order? &#129297;</h2>
        <p>Join thousands of food lovers who trust FoodExpress for their daily meals.</p>
        <div class="final-cta-btns">
            <a href="${pageContext.request.contextPath}/register" class="btn-hero btn-hero-primary">
                &#9889; Create Free Account
            </a>
            <a href="${pageContext.request.contextPath}/login" class="btn-hero btn-hero-secondary">
                &#128274; I have an account
            </a>
        </div>
    </div>
</section>

<!-- FOOTER -->
<footer class="footer">
    <div class="footer-logo">FoodExpress</div>
    <div>&#169; 2026 FoodExpress. Delivered hot. Every time. &#127861;</div>
</footer>

<script>
    /* ── Global Theme Toggle (shared with all pages via localStorage) ── */
    function toggleTheme() {
        var html = document.documentElement;
        var next = html.getAttribute('data-theme') === 'dark' ? 'light' : 'dark';
        html.setAttribute('data-theme', next);
        localStorage.setItem('fe-theme', next);
        var btn = document.getElementById('themeToggle');
        if (btn) btn.innerHTML = next === 'dark' ? '&#9728;&#65039;' : '&#127769;';
    }
    // Set correct icon on load
    (function() {
        var t = localStorage.getItem('fe-theme') || 'dark';
        var btn = document.getElementById('themeToggle');
        if (btn) btn.innerHTML = t === 'dark' ? '&#9728;&#65039;' : '&#127769;';
    })();

    // Animate restaurant counter
    (function() {
        var el = document.getElementById('countRest');
        var target = 100, current = 0;
        var timer = setInterval(function() {
            current += 4;
            if (current >= target) { current = target; clearInterval(timer); }
            el.textContent = current + '+';
        }, 20);
    })();

    // Food scroll strip
    var foods = [
        { name:'Biryani', img:'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=400&auto=format' },
        { name:'Pizza', img:'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=400&auto=format' },
        { name:'Burger', img:'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=400&auto=format' },
        { name:'Dosa', img:'https://images.unsplash.com/photo-1668236543090-82eba5ee5976?w=400&auto=format' },
        { name:'Noodles', img:'https://images.unsplash.com/photo-1569718212165-3a8278d5f624?w=400&auto=format' },
        { name:'Sushi', img:'https://images.unsplash.com/photo-1579871494447-9811cf80d66c?w=400&auto=format' },
        { name:'Tacos', img:'https://images.unsplash.com/photo-1551504734-5ee1c4a1479b?w=400&auto=format' },
        { name:'Ice Cream', img:'https://images.unsplash.com/photo-1560008581-09826d1de69e?w=400&auto=format' },
        { name:'Pasta', img:'https://images.unsplash.com/photo-1555949258-eb67b1ef0ceb?w=400&auto=format' },
        { name:'Rolls', img:'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=400&auto=format' },
    ];
    var track = document.getElementById('scrollTrack');
    // Duplicate for infinite scroll
    var all = foods.concat(foods);
    all.forEach(function(f) {
        var card = document.createElement('div');
        card.className = 'food-card-mini';
        card.innerHTML = '<img src="' + f.img + '" alt="' + f.name + '" loading="lazy" onerror="this.onerror=null;this.src=\'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=400&auto=format\'">' +
            '<div class="food-card-mini-label">' + f.name + '</div>';
        track.appendChild(card);
    });
</script>
</body>
</html>
