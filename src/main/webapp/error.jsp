<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error — FoodExpress</title>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@400;700;900&family=Inter:wght@400;500&display=swap" rel="stylesheet">
    <style>
        *, *::before, *::after { margin:0; padding:0; box-sizing:border-box; }
        :root { --primary:#E23744; --orange:#FF6B35; --bg:#0A0A0F; --text:#F0F0FF; --text-muted:#8888AA; }
        body { font-family:'Inter',sans-serif; background:var(--bg); color:var(--text); min-height:100vh; display:flex; align-items:center; justify-content:center; text-align:center; padding:2rem; }
        .bg-orb { position:fixed; border-radius:50%; pointer-events:none; z-index:0; }
        .orb1 { width:500px; height:500px; top:-150px; right:-100px; background:radial-gradient(circle, rgba(226,55,68,0.10) 0%, transparent 70%); }
        .orb2 { width:400px; height:400px; bottom:-150px; left:-100px; background:radial-gradient(circle, rgba(255,107,53,0.08) 0%, transparent 70%); }
        .error-wrap { position:relative; z-index:1; max-width:500px; }
        .error-code { font-family:'Outfit',sans-serif; font-size:8rem; font-weight:900; line-height:1; background:linear-gradient(135deg,var(--primary),var(--orange)); -webkit-background-clip:text; -webkit-text-fill-color:transparent; background-clip:text; margin-bottom:0.5rem; }
        .error-icon { font-size:4rem; margin-bottom:1rem; animation:bounce 2s ease-in-out infinite; }
        @keyframes bounce { 0%,100%{transform:translateY(0);} 50%{transform:translateY(-12px);} }
        .error-title { font-family:'Outfit',sans-serif; font-size:1.8rem; font-weight:800; margin-bottom:0.6rem; }
        .error-msg { color:var(--text-muted); font-size:0.92rem; margin-bottom:2.5rem; line-height:1.6; }
        .btn-home { display:inline-flex; align-items:center; gap:8px; padding:13px 28px; background:linear-gradient(135deg,var(--primary),var(--orange)); color:white; border-radius:100px; font-family:'Outfit',sans-serif; font-weight:700; font-size:0.95rem; text-decoration:none; transition:all 0.3s; box-shadow:0 4px 20px rgba(226,55,68,0.3); }
        .btn-home:hover { transform:translateY(-2px); box-shadow:0 8px 28px rgba(226,55,68,0.4); }
        .btn-back { display:inline-flex; align-items:center; gap:6px; padding:11px 22px; border:1.5px solid rgba(255,255,255,0.1); border-radius:100px; color:var(--text-muted); font-size:0.875rem; font-weight:600; text-decoration:none; margin-left:10px; transition:all 0.3s; }
        .btn-back:hover { border-color:var(--primary); color:var(--primary); }
    </style>
</head>
<body>
<script>(function(){var t=localStorage.getItem('fe-theme')||'dark';document.documentElement.setAttribute('data-theme',t);})();</script>
<div class="bg-orb orb1"></div>
<div class="bg-orb orb2"></div>
<div class="error-wrap">
    <div class="error-code">${pageContext.errorData.statusCode != 0 ? pageContext.errorData.statusCode : '404'}</div>
    <div class="error-icon">&#128557;</div>
    <div class="error-title">Oops! Something went wrong</div>
    <div class="error-msg">
        The page you're looking for doesn't exist or an unexpected error occurred.<br>
        Don't worry — let's get you back on track!
    </div>
    <a href="${pageContext.request.contextPath}/home" class="btn-home">&#127968; Go Home</a>
    <a href="javascript:history.back()" class="btn-back">&#8592; Go Back</a>
</div>
</body>
</html>
