<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    // Auth guard
    com.foodapp.model.User u = (com.foodapp.model.User) session.getAttribute("user");
    if (u == null) { response.sendRedirect(request.getContextPath() + "/login"); return; }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Profile — FoodExpress</title>
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
        .btn-logout { padding:8px 16px; border:1.5px solid var(--border); border-radius:var(--radius-full); color:var(--text-muted); font-weight:600; font-size:0.82rem; background:transparent; cursor:pointer; transition:var(--transition); font-family:'Inter',sans-serif; }
        .btn-logout:hover { border-color:#FF5252; color:#FF5252; }

        /* PAGE */
        .page-wrap { max-width:1000px; margin:0 auto; padding:3rem 2rem 5rem; }
        .profile-layout { display:grid; grid-template-columns:280px 1fr; gap:2rem; align-items:start; }

        /* LEFT: Avatar card */
        .avatar-card { background:var(--bg-card); border:1px solid var(--border); border-radius:var(--radius); box-shadow:var(--shadow); overflow:hidden; text-align:center; position:sticky; top:90px; }
        .avatar-banner { height:80px; background:linear-gradient(135deg,var(--primary),var(--orange)); }
        .avatar-body { padding:0 24px 28px; }
        .avatar-circle {
            width:88px; height:88px; border-radius:50%;
            background:linear-gradient(135deg,var(--primary),var(--orange));
            color:white; font-family:'Outfit',sans-serif; font-size:2.2rem; font-weight:900;
            display:flex; align-items:center; justify-content:center;
            margin:-44px auto 0; border:4px solid var(--bg-card);
            box-shadow:0 8px 24px var(--primary-glow);
            text-transform:uppercase; position:relative; z-index:1;
            overflow:hidden;
        }
        .avatar-circle img { width:100%; height:100%; object-fit:cover; border-radius:50%; }
        .avatar-name { font-family:'Outfit',sans-serif; font-size:1.2rem; font-weight:800; margin:14px 0 4px; }
        .avatar-username { font-size:0.78rem; color:var(--text-muted); margin-bottom:10px; }
        .avatar-role { display:inline-block; background:var(--green-bg,rgba(29,185,84,0.1)); color:var(--green); border:1px solid rgba(29,185,84,0.2); padding:3px 12px; border-radius:var(--radius-full); font-size:0.72rem; font-weight:700; text-transform:uppercase; letter-spacing:0.5px; margin-bottom:20px; }
        .avatar-divider { height:1px; background:var(--border); margin:16px 0; }
        .avatar-stat { display:flex; justify-content:space-between; font-size:0.8rem; color:var(--text-muted); padding:5px 0; }
        .avatar-stat strong { color:var(--text); font-weight:700; }

        .btn-change-avatar { width:100%; padding:9px; background:var(--bg-gray); border:1.5px solid var(--border); border-radius:var(--radius-full); font-size:0.8rem; font-weight:600; color:var(--text-muted); cursor:pointer; transition:var(--transition); margin-top:14px; }
        .btn-change-avatar:hover { border-color:var(--primary); color:var(--primary); }

        /* RIGHT: Info cards */
        .info-card { background:var(--bg-card); border:1px solid var(--border); border-radius:var(--radius); box-shadow:var(--shadow); overflow:hidden; margin-bottom:1.2rem; }
        .info-card-header { padding:16px 20px; border-bottom:1px solid var(--border); display:flex; align-items:center; justify-content:space-between; }
        .info-card-title { font-family:'Outfit',sans-serif; font-size:1rem; font-weight:800; display:flex; align-items:center; gap:8px; }
        .info-card-body { padding:20px; }

        .info-row { display:flex; gap:12px; margin-bottom:1rem; }
        .info-row:last-child { margin-bottom:0; }
        .info-field { flex:1; }
        .info-label { font-size:0.75rem; font-weight:700; color:var(--text-muted); text-transform:uppercase; letter-spacing:0.3px; margin-bottom:5px; }
        .info-value { font-size:0.92rem; font-weight:600; color:var(--text); padding:10px 14px; background:var(--bg-gray); border:1px solid var(--border); border-radius:var(--radius-sm); }
        .info-value.empty { color:var(--text-light); font-style:italic; font-weight:400; }

        /* Quick links */
        .quick-links { display:grid; grid-template-columns:1fr 1fr; gap:10px; }
        .quick-link { display:flex; align-items:center; gap:10px; padding:14px 16px; background:var(--bg-gray); border:1.5px solid var(--border); border-radius:var(--radius-sm); transition:var(--transition); cursor:pointer; }
        .quick-link:hover { border-color:var(--primary); background:var(--bg-card); transform:translateY(-2px); box-shadow:var(--shadow-sm,0 2px 8px rgba(0,0,0,0.05)); }
        .ql-icon { font-size:1.5rem; flex-shrink:0; }
        .ql-text { font-size:0.83rem; font-weight:700; color:var(--text); }
        .ql-sub { font-size:0.72rem; color:var(--text-muted); margin-top:1px; }

        /* Avatar picker modal */
        .modal-overlay { position:fixed; inset:0; background:rgba(0,0,0,0.6); backdrop-filter:blur(6px); z-index:9000; display:none; align-items:center; justify-content:center; }
        .modal-overlay.open { display:flex; }
        .modal { background:var(--bg-card); border:1px solid var(--border); border-radius:var(--radius); padding:24px; width:360px; max-width:90vw; box-shadow:0 24px 80px rgba(0,0,0,0.4); }
        .modal-title { font-family:'Outfit',sans-serif; font-size:1.1rem; font-weight:800; margin-bottom:1rem; }
        .avatar-grid { display:grid; grid-template-columns:repeat(5,1fr); gap:8px; margin-bottom:1rem; }
        .av-opt { width:52px; height:52px; border-radius:50%; cursor:pointer; border:3px solid transparent; transition:all 0.2s; object-fit:cover; }
        .av-opt:hover, .av-opt.selected { border-color:var(--primary); transform:scale(1.1); }
        .modal-url-row { display:flex; gap:8px; margin-top:8px; }
        .modal-url-input { flex:1; background:var(--bg-gray); border:1.5px solid var(--border); border-radius:var(--radius-sm); padding:9px 12px; font-size:0.82rem; color:var(--text); outline:none; }
        .modal-url-input:focus { border-color:var(--primary); }
        .btn-modal-save { padding:9px 18px; background:linear-gradient(135deg,var(--primary),var(--orange)); color:white; border:none; border-radius:var(--radius-full); font-weight:700; font-size:0.85rem; cursor:pointer; }
        .btn-modal-cancel { padding:9px 14px; background:transparent; border:1.5px solid var(--border); border-radius:var(--radius-full); font-weight:600; font-size:0.85rem; cursor:pointer; color:var(--text-muted); }

        @media (max-width:800px) { .profile-layout { grid-template-columns:1fr; } .avatar-card { position:static; } }
        @media (max-width:500px) { .quick-links { grid-template-columns:1fr; } .info-row { flex-direction:column; gap:8px; } .page-wrap { padding:1.5rem 1rem 4rem; } }
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
            <a href="${pageContext.request.contextPath}/logout"><button class="btn-logout">Logout</button></a>
        </div>
    </div>
</nav>

<div class="page-wrap">
    <div class="profile-layout">

        <!-- LEFT: Avatar Card -->
        <div class="avatar-card">
            <div class="avatar-banner"></div>
            <div class="avatar-body">
                <div class="avatar-circle" id="avatarCircle">
                    <c:out value="${fn:substring(sessionScope.userName, 0, 1)}"/>
                </div>
                <div class="avatar-name"><c:out value="${sessionScope.user.name}"/></div>
                <div class="avatar-username">@<c:out value="${sessionScope.user.username}"/></div>
                <div class="avatar-role"><c:out value="${sessionScope.user.role}"/></div>
                <div class="avatar-divider"></div>
                <div class="avatar-stat"><span>Member since</span> <strong id="memberSince">—</strong></div>
                <div class="avatar-stat"><span>User ID</span> <strong>#<c:out value="${sessionScope.user.id}"/></strong></div>
                <button class="btn-change-avatar" onclick="openAvatarModal()">&#128247; Change Avatar</button>
            </div>
        </div>

        <!-- RIGHT: Info -->
        <div>
            <!-- Personal Info -->
            <div class="info-card">
                <div class="info-card-header">
                    <div class="info-card-title">&#128100; Personal Information</div>
                </div>
                <div class="info-card-body">
                    <div class="info-row">
                        <div class="info-field">
                            <div class="info-label">Full Name</div>
                            <div class="info-value"><c:out value="${sessionScope.user.name}"/></div>
                        </div>
                        <div class="info-field">
                            <div class="info-label">Username</div>
                            <div class="info-value">@<c:out value="${sessionScope.user.username}"/></div>
                        </div>
                    </div>
                    <div class="info-row">
                        <div class="info-field">
                            <div class="info-label">Email Address</div>
                            <div class="info-value <c:if test='${empty sessionScope.user.email}'>empty</c:if>">
                                <c:choose>
                                    <c:when test="${not empty sessionScope.user.email}"><c:out value="${sessionScope.user.email}"/></c:when>
                                    <c:otherwise>Not provided</c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                        <div class="info-field">
                            <div class="info-label">Phone Number</div>
                            <div class="info-value <c:if test='${empty sessionScope.user.phone}'>empty</c:if>">
                                <c:choose>
                                    <c:when test="${not empty sessionScope.user.phone}"><c:out value="${sessionScope.user.phone}"/></c:when>
                                    <c:otherwise>Not provided</c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                    <div class="info-row">
                        <div class="info-field">
                            <div class="info-label">Default Delivery Address</div>
                            <div class="info-value <c:if test='${empty sessionScope.user.address}'>empty</c:if>">
                                <c:choose>
                                    <c:when test="${not empty sessionScope.user.address}"><c:out value="${sessionScope.user.address}"/></c:when>
                                    <c:otherwise>No address saved</c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Quick Links -->
            <div class="info-card">
                <div class="info-card-header">
                    <div class="info-card-title">&#9889; Quick Actions</div>
                </div>
                <div class="info-card-body">
                    <div class="quick-links">
                        <a href="${pageContext.request.contextPath}/order-history" class="quick-link">
                            <span class="ql-icon">&#129534;</span>
                            <div><div class="ql-text">My Orders</div><div class="ql-sub">View order history</div></div>
                        </a>
                        <a href="${pageContext.request.contextPath}/cart" class="quick-link">
                            <span class="ql-icon">&#128722;</span>
                            <div><div class="ql-text">My Cart</div><div class="ql-sub">View current cart</div></div>
                        </a>
                        <a href="${pageContext.request.contextPath}/home" class="quick-link">
                            <span class="ql-icon">&#127869;</span>
                            <div><div class="ql-text">Order Food</div><div class="ql-sub">Browse restaurants</div></div>
                        </a>
                        <a href="${pageContext.request.contextPath}/logout" class="quick-link">
                            <span class="ql-icon">&#128682;</span>
                            <div><div class="ql-text">Sign Out</div><div class="ql-sub">Logout from account</div></div>
                        </a>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

<!-- Avatar Picker Modal -->
<div class="modal-overlay" id="avatarModal">
    <div class="modal">
        <div class="modal-title">&#128247; Choose Avatar</div>
        <div class="avatar-grid" id="avatarGrid">
            <!-- generated by JS -->
        </div>
        <div style="font-size:0.78rem;color:var(--text-muted);margin-bottom:6px;">Or enter image URL:</div>
        <div class="modal-url-row">
            <input type="text" class="modal-url-input" id="avatarUrlInput" placeholder="https://...">
            <button class="btn-modal-save" onclick="saveAvatarUrl()">Save</button>
            <button class="btn-modal-cancel" onclick="closeAvatarModal()">Cancel</button>
        </div>
    </div>
</div>

<script>
    /* Theme */
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

    /* Member since */
    (function() {
        var el = document.getElementById('memberSince');
        if (el) {
            var d = new Date(); // fallback — server doesn't expose createdDate easily
            el.textContent = d.toLocaleDateString('en-IN', { month: 'short', year: 'numeric' });
        }
    })();

    /* Avatar from localStorage */
    (function() {
        var saved = localStorage.getItem('fe-avatar-url');
        var circle = document.getElementById('avatarCircle');
        if (saved && circle) {
            circle.innerHTML = '<img src="' + saved + '" onerror="this.onerror=null;this.parentElement.textContent=\'${fn:substring(sessionScope.userName, 0, 1)}\';">';
        }
    })();

    /* Avatar presets */
    var PRESETS = [
        'https://api.dicebear.com/7.x/avataaars/svg?seed=Felix&backgroundColor=b6e3f4',
        'https://api.dicebear.com/7.x/avataaars/svg?seed=Aneka&backgroundColor=ffd5dc',
        'https://api.dicebear.com/7.x/avataaars/svg?seed=Coco&backgroundColor=d1d4f9',
        'https://api.dicebear.com/7.x/avataaars/svg?seed=Luna&backgroundColor=c0aede',
        'https://api.dicebear.com/7.x/avataaars/svg?seed=Tiger&backgroundColor=ffdfbf',
        'https://api.dicebear.com/7.x/avataaars/svg?seed=Muffin&backgroundColor=b6e3f4',
        'https://api.dicebear.com/7.x/avataaars/svg?seed=Sam&backgroundColor=ffd5dc',
        'https://api.dicebear.com/7.x/avataaars/svg?seed=Alex&backgroundColor=d1d4f9',
        'https://api.dicebear.com/7.x/avataaars/svg?seed=Jordan&backgroundColor=c0aede',
        'https://api.dicebear.com/7.x/avataaars/svg?seed=Morgan&backgroundColor=ffdfbf',
    ];

    function openAvatarModal() {
        var grid = document.getElementById('avatarGrid');
        var current = localStorage.getItem('fe-avatar-url') || '';
        grid.innerHTML = '';
        PRESETS.forEach(function(url) {
            var img = document.createElement('img');
            img.src = url; img.className = 'av-opt';
            if (url === current) img.classList.add('selected');
            img.onclick = function() {
                document.querySelectorAll('.av-opt').forEach(function(i){i.classList.remove('selected');});
                img.classList.add('selected');
                localStorage.setItem('fe-avatar-url', url);
                applyAvatar(url);
            };
            grid.appendChild(img);
        });
        document.getElementById('avatarModal').classList.add('open');
    }
    function closeAvatarModal() { document.getElementById('avatarModal').classList.remove('open'); }
    function saveAvatarUrl() {
        var url = document.getElementById('avatarUrlInput').value.trim();
        if (url) { localStorage.setItem('fe-avatar-url', url); applyAvatar(url); }
        closeAvatarModal();
    }
    function applyAvatar(url) {
        var circle = document.getElementById('avatarCircle');
        circle.innerHTML = '<img src="' + url + '" onerror="this.onerror=null;">';
    }
    document.getElementById('avatarModal').addEventListener('click', function(e) {
        if (e.target === this) closeAvatarModal();
    });
</script>
</body>
</html>
