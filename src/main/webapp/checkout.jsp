<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout — FoodExpress</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@400;600;700;800;900&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        *, *::before, *::after { margin:0; padding:0; box-sizing:border-box; }
        :root {
            --primary:#E23744; --orange:#FF6B35; --primary-glow:rgba(226,55,68,0.25);
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
        html { scroll-behavior:smooth; }
        body { font-family:'Inter',sans-serif; color:var(--text); background:var(--bg); min-height:100vh; transition:background 0.4s,color 0.4s; -webkit-font-smoothing:antialiased; }
        a { text-decoration:none; color:inherit; }

        /* NAV */
        .nav { position:sticky; top:0; z-index:999; background:var(--nav-bg); backdrop-filter:blur(24px) saturate(180%); -webkit-backdrop-filter:blur(24px) saturate(180%); border-bottom:1px solid var(--glass-border); padding:0 2rem; }
        .nav-inner { max-width:1100px; margin:0 auto; display:flex; align-items:center; gap:16px; height:70px; }
        .nav-logo { font-family:'Outfit',sans-serif; font-size:1.65rem; font-weight:900; letter-spacing:-1.5px; background:linear-gradient(135deg,var(--primary),var(--orange)); -webkit-background-clip:text; -webkit-text-fill-color:transparent; background-clip:text; }
        .nav-logo span { background:linear-gradient(135deg,var(--orange),#FFD700); -webkit-background-clip:text; -webkit-text-fill-color:transparent; background-clip:text; }
        .nav-actions { margin-left:auto; display:flex; align-items:center; gap:8px; }
        .theme-toggle { width:38px; height:38px; border-radius:50%; border:1.5px solid var(--border); background:var(--glass); font-size:1rem; cursor:pointer; display:flex; align-items:center; justify-content:center; transition:var(--transition); color:var(--text); }
        .theme-toggle:hover { border-color:var(--primary); transform:scale(1.1); }
        .btn-outline { display:flex; align-items:center; gap:5px; padding:8px 14px; background:var(--glass); border:1.5px solid var(--border); border-radius:var(--radius-full); font-size:0.82rem; font-weight:600; color:var(--text-muted); transition:var(--transition); }
        .btn-outline:hover { border-color:var(--primary); color:var(--primary); }

        /* STEPS */
        .steps-bar { background:var(--bg-card); border-bottom:1px solid var(--border); padding:14px 0; }
        .steps-inner { max-width:1100px; margin:0 auto; padding:0 2rem; display:flex; align-items:center; gap:0; }
        .step { display:flex; align-items:center; gap:8px; font-size:0.82rem; font-weight:600; color:var(--text-light); }
        .step.active { color:var(--primary); }
        .step.done { color:var(--green); }
        .step-num { width:26px; height:26px; border-radius:50%; background:var(--bg-gray); border:2px solid var(--border); display:flex; align-items:center; justify-content:center; font-size:0.75rem; font-weight:800; }
        .step.active .step-num { background:var(--primary); border-color:var(--primary); color:white; }
        .step.done .step-num { background:var(--green); border-color:var(--green); color:white; }
        .step-sep { flex:1; height:1px; background:var(--border); margin:0 12px; }

        /* PAGE */
        .page-wrap { max-width:1100px; margin:0 auto; padding:2.5rem 2rem 5rem; }
        .checkout-layout { display:grid; grid-template-columns:1fr 360px; gap:2rem; align-items:start; }

        /* FORM CARD */
        .form-card { background:var(--bg-card); border:1px solid var(--border); border-radius:var(--radius); box-shadow:var(--shadow); overflow:hidden; }
        .form-card-header { padding:18px 24px; border-bottom:1px solid var(--border); }
        .form-card-title { font-family:'Outfit',sans-serif; font-size:1.1rem; font-weight:800; display:flex; align-items:center; gap:8px; }
        .form-body { padding:24px; }

        .form-group { margin-bottom:1.2rem; }
        .form-label { display:block; font-size:0.78rem; font-weight:700; color:var(--text-muted); margin-bottom:6px; text-transform:uppercase; letter-spacing:0.3px; }
        .form-input, .form-select, .form-textarea {
            width:100%; background:var(--bg-gray); border:1.5px solid var(--border);
            border-radius:var(--radius-sm); padding:12px 14px;
            font-family:'Inter',sans-serif; font-size:0.92rem; color:var(--text);
            outline:none; transition:var(--transition);
        }
        .form-textarea { resize:vertical; min-height:80px; }
        .form-input:focus, .form-select:focus, .form-textarea:focus {
            border-color:var(--primary); background:var(--bg-card);
            box-shadow:0 0 0 4px var(--primary-glow);
        }
        .form-input::placeholder, .form-textarea::placeholder { color:var(--text-light); }
        .form-select option { background:var(--bg-card); }

        /* Payment options */
        .payment-options { display:grid; grid-template-columns:1fr 1fr; gap:10px; }
        .payment-opt { position:relative; }
        .payment-opt input[type="radio"] { display:none; }
        .payment-opt label {
            display:flex; align-items:center; gap:10px;
            padding:12px 14px; border-radius:var(--radius-sm);
            border:1.5px solid var(--border); background:var(--bg-gray);
            cursor:pointer; transition:var(--transition);
            font-size:0.875rem; font-weight:600;
        }
        .payment-opt input:checked + label {
            border-color:var(--primary); background:var(--bg-card);
            box-shadow:0 0 0 3px var(--primary-glow);
            color:var(--primary);
        }
        .payment-opt label:hover { border-color:var(--primary); }
        .pay-icon { font-size:1.3rem; }

        /* Alert */
        .alert-error { padding:12px 16px; background:rgba(226,55,68,0.1); border:1px solid rgba(226,55,68,0.25); border-radius:var(--radius-sm); color:#E23744; font-size:0.85rem; margin-bottom:1.2rem; display:flex; align-items:center; gap:8px; }

        /* SUMMARY CARD */
        .summary-card { background:var(--bg-card); border:1px solid var(--border); border-radius:var(--radius); box-shadow:var(--shadow-md); overflow:hidden; position:sticky; top:90px; }
        .summary-header { padding:16px 20px; background:linear-gradient(135deg,var(--primary),var(--orange)); color:white; }
        .summary-title { font-family:'Outfit',sans-serif; font-size:1.05rem; font-weight:800; }
        .summary-restaurant { font-size:0.78rem; opacity:0.85; margin-top:2px; }
        .summary-items { padding:0 16px; max-height:260px; overflow-y:auto; }
        .summary-items::-webkit-scrollbar { width:4px; }
        .summary-items::-webkit-scrollbar-thumb { background:var(--border); border-radius:4px; }
        .summary-item { display:flex; justify-content:space-between; align-items:center; padding:10px 0; border-bottom:1px solid var(--border); font-size:0.85rem; }
        .summary-item:last-child { border-bottom:none; }
        .summary-item-name { color:var(--text); font-weight:600; }
        .summary-item-qty { color:var(--text-muted); font-size:0.75rem; }
        .summary-item-price { font-weight:700; color:var(--text); white-space:nowrap; }
        .summary-totals { padding:14px 16px; border-top:1px solid var(--border); }
        .s-row { display:flex; justify-content:space-between; font-size:0.85rem; color:var(--text-muted); margin-bottom:8px; }
        .s-row.grand { font-size:1rem; font-weight:800; color:var(--text); border-top:1px solid var(--border); padding-top:10px; margin-top:4px; }
        .grand-amount { font-family:'Outfit',sans-serif; font-size:1.2rem; background:linear-gradient(135deg,var(--primary),var(--orange)); -webkit-background-clip:text; -webkit-text-fill-color:transparent; background-clip:text; }

        /* Submit btn */
        .btn-place { width:100%; padding:14px; background:linear-gradient(135deg,var(--primary),var(--orange)); color:white; border:none; border-radius:var(--radius-full); font-family:'Outfit',sans-serif; font-size:1rem; font-weight:800; cursor:pointer; transition:var(--transition); box-shadow:0 4px 16px var(--primary-glow); display:flex; align-items:center; justify-content:center; gap:8px; margin-top:14px; }
        .btn-place:hover { transform:translateY(-2px); box-shadow:0 8px 24px var(--primary-glow); filter:brightness(1.05); }
        .btn-back { width:100%; padding:11px; background:var(--glass); border:1.5px solid var(--border); border-radius:var(--radius-full); font-family:'Outfit',sans-serif; font-size:0.88rem; font-weight:700; cursor:pointer; transition:var(--transition); color:var(--text-muted); margin-top:10px; display:flex; align-items:center; justify-content:center; gap:6px; }
        .btn-back:hover { border-color:var(--primary); color:var(--primary); }

        @media (max-width:900px) { .checkout-layout { grid-template-columns:1fr; } .summary-card { position:static; } }
        @media (max-width:600px) { .page-wrap { padding:1.5rem 1rem; } .payment-options { grid-template-columns:1fr; } }
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
            <a href="${pageContext.request.contextPath}/cart" class="btn-outline">&#8592; Back to Cart</a>
        </div>
    </div>
</nav>

<!-- STEPS -->
<div class="steps-bar">
    <div class="steps-inner">
        <div class="step done"><div class="step-num">&#10003;</div> Cart</div>
        <div class="step-sep"></div>
        <div class="step active"><div class="step-num">2</div> Checkout</div>
        <div class="step-sep"></div>
        <div class="step"><div class="step-num">3</div> Confirmation</div>
    </div>
</div>

<div class="page-wrap">
    <div class="checkout-layout">

        <!-- LEFT: Form -->
        <form method="post" action="${pageContext.request.contextPath}/checkout" id="checkoutForm">

            <!-- Error -->
            <c:if test="${not empty error}">
                <div class="alert-error">&#9888; <span><c:out value="${error}"/></span></div>
            </c:if>

            <!-- Delivery Address -->
            <div class="form-card" style="margin-bottom:1.2rem;">
                <div class="form-card-header">
                    <div class="form-card-title">&#128205; Delivery Address</div>
                </div>
                <div class="form-body">
                    <div class="form-group">
                        <label class="form-label" for="address">Full Delivery Address *</label>
                        <textarea class="form-textarea" id="address" name="address" rows="3"
                                  placeholder="Enter your complete delivery address including flat no, street, city..."
                                  required><c:out value="${userAddress}"/></textarea>
                    </div>
                </div>
            </div>

            <!-- Payment Method -->
            <div class="form-card">
                <div class="form-card-header">
                    <div class="form-card-title">&#128179; Payment Method</div>
                </div>
                <div class="form-body">
                    <div class="payment-options">
                        <div class="payment-opt">
                            <input type="radio" id="cod" name="paymentMode" value="COD" required>
                            <label for="cod"><span class="pay-icon">&#128181;</span> Cash on Delivery</label>
                        </div>
                        <div class="payment-opt">
                            <input type="radio" id="upi" name="paymentMode" value="UPI">
                            <label for="upi"><span class="pay-icon">&#128243;</span> UPI / GPay</label>
                        </div>
                        <div class="payment-opt">
                            <input type="radio" id="card" name="paymentMode" value="CARD">
                            <label for="card"><span class="pay-icon">&#128179;</span> Credit / Debit Card</label>
                        </div>
                        <div class="payment-opt">
                            <input type="radio" id="wallet" name="paymentMode" value="WALLET">
                            <label for="wallet"><span class="pay-icon">&#128247;</span> Paytm / Wallet</label>
                        </div>
                    </div>
                </div>
            </div>

        </form><!-- end form — submit button is inside summary card -->

        <!-- RIGHT: Summary -->
        <div class="summary-card">
            <div class="summary-header">
                <div class="summary-title">&#129534; Order Summary</div>
                <div class="summary-restaurant">&#127968; <c:out value="${cart.restaurantName}"/></div>
            </div>

            <div class="summary-items">
                <c:forEach var="entry" items="${cart.items}">
                    <c:set var="item" value="${entry.value}"/>
                    <div class="summary-item">
                        <div>
                            <div class="summary-item-name"><c:out value="${item.name}"/></div>
                            <div class="summary-item-qty">x<c:out value="${item.quantity}"/></div>
                        </div>
                        <div class="summary-item-price">&#8377;<fmt:formatNumber value="${item.subtotal}" maxFractionDigits="0"/></div>
                    </div>
                </c:forEach>
            </div>

            <div class="summary-totals">
                <div class="s-row">
                    <span>Subtotal</span>
                    <span>&#8377;<fmt:formatNumber value="${cart.total}" maxFractionDigits="0"/></span>
                </div>
                <div class="s-row">
                    <span>Delivery Fee</span>
                    <span style="color:var(--green);font-weight:600;">FREE</span>
                </div>
                <div class="s-row">
                    <span>GST (5%)</span>
                    <c:set var="gstAmt" value="${cart.total * 0.05}"/>
                    <span>&#8377;<fmt:formatNumber value="${gstAmt}" maxFractionDigits="0"/></span>
                </div>
                <div class="s-row grand">
                    <span>Total Payable</span>
                    <c:set var="grandTotal" value="${cart.total * 1.05}"/>
                    <span class="grand-amount">&#8377;<fmt:formatNumber value="${grandTotal}" maxFractionDigits="0"/></span>
                </div>

                <button type="button" class="btn-place" onclick="submitOrder()">
                    &#9989; Place Order
                </button>
                <a href="${pageContext.request.contextPath}/cart">
                    <button type="button" class="btn-back">&#8592; Edit Cart</button>
                </a>
            </div>
        </div>

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
    (function() {
        var t = localStorage.getItem('fe-theme') || 'dark';
        document.getElementById('themeToggle').innerHTML = t === 'dark' ? '&#9728;&#65039;' : '&#127769;';
    })();

    function submitOrder() {
        // Validate address
        var addr = document.getElementById('address').value.trim();
        if (!addr) { alert('Please enter your delivery address.'); document.getElementById('address').focus(); return; }
        // Validate payment
        var paySelected = document.querySelector('input[name="paymentMode"]:checked');
        if (!paySelected) { alert('Please select a payment method.'); return; }
        // Submit
        var btn = document.querySelector('.btn-place');
        btn.innerHTML = '&#9203; Placing Order...';
        btn.disabled = true;
        document.getElementById('checkoutForm').submit();
    }
</script>
</body>
</html>
