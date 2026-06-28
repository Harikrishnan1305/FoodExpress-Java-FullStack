<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Your order history - FoodExpress">
    <title>FoodExpress — Order History</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <style>
        /* ===== Order History — page-specific styles ===== */

        .history-container {
            max-width: 860px;
            margin: 0 auto;
            padding: 0 1rem 4rem;
        }

        /* ── Order card ─────────────────────────────────── */
        .order-card {
            background: var(--bg-card);
            border: 1px solid var(--border-color);
            border-radius: var(--radius-lg);
            margin-bottom: 1.5rem;
            overflow: hidden;
            backdrop-filter: blur(20px);
            box-shadow: var(--shadow-md);
            transition: transform var(--transition-base), box-shadow var(--transition-base);
            animation: fadeInUp 0.4s ease both;
        }
        .order-card:hover {
            transform: translateY(-3px);
            box-shadow: var(--shadow-lg);
        }

        /* ── Card header ────────────────────────────────── */
        .order-card-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 0.75rem;
            padding: 1.25rem 1.5rem;
            border-bottom: 1px solid var(--border-color);
            background: var(--bg-glass);
        }
        .order-id-label {
            font-family: var(--font-display);
            font-weight: 700;
            font-size: 1rem;
            color: var(--text-primary);
        }
        .order-id-label span {
            color: var(--primary);
        }
        .order-meta {
            display: flex;
            gap: 1.2rem;
            flex-wrap: wrap;
            font-size: 0.82rem;
            color: var(--text-secondary);
        }
        .order-meta i { margin-right: 4px; }

        /* ── Status badge ───────────────────────────────── */
        .status-badge {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            padding: 4px 14px;
            border-radius: var(--radius-full);
            font-size: 0.75rem;
            font-weight: 700;
            letter-spacing: 0.5px;
            text-transform: uppercase;
        }
        .status-PLACED          { background: rgba(68,138,255,0.15); color: #448AFF; border: 1px solid rgba(68,138,255,0.3); }
        .status-CONFIRMED       { background: rgba(255,179,71,0.15); color: #FFB347; border: 1px solid rgba(255,179,71,0.3); }
        .status-PREPARING       { background: rgba(255,179,71,0.15); color: #FFB347; border: 1px solid rgba(255,179,71,0.3); }
        .status-OUT_FOR_DELIVERY{ background: rgba(68,138,255,0.15); color: #448AFF; border: 1px solid rgba(68,138,255,0.3); }
        .status-DELIVERED       { background: rgba(0,200,83,0.12);  color: #00C853; border: 1px solid rgba(0,200,83,0.3); }
        .status-CANCELLED       { background: rgba(255,82,82,0.12); color: #FF5252; border: 1px solid rgba(255,82,82,0.3); }

        /* ── Card body ──────────────────────────────────── */
        .order-card-body {
            padding: 1.25rem 1.5rem;
        }
        .order-restaurant-name {
            font-family: var(--font-display);
            font-size: 1.05rem;
            font-weight: 700;
            color: var(--text-primary);
            margin-bottom: 1rem;
        }
        .order-restaurant-name small {
            font-family: var(--font-body);
            font-weight: 400;
            font-size: 0.8rem;
            color: var(--text-muted);
            margin-left: 8px;
        }

        /* ── Items list ─────────────────────────────────── */
        .order-items-list {
            list-style: none;
            padding: 0;
            margin: 0 0 1rem;
            border-radius: var(--radius-sm);
            overflow: hidden;
            border: 1px solid var(--border-color);
        }
        .order-item-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 9px 14px;
            font-size: 0.88rem;
            color: var(--text-secondary);
            border-bottom: 1px solid var(--border-color);
            transition: background var(--transition-fast);
        }
        .order-item-row:last-child { border-bottom: none; }
        .order-item-row:hover { background: var(--bg-glass); }
        .order-item-row .item-qty {
            background: var(--primary);
            color: #fff;
            font-size: 0.7rem;
            font-weight: 700;
            padding: 2px 7px;
            border-radius: 20px;
            margin-right: 8px;
        }
        .order-item-row .item-price {
            font-weight: 600;
            color: var(--text-primary);
        }

        /* ── Card footer (total + actions) ─────────────── */
        .order-card-footer {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 0.75rem;
            padding: 1rem 1.5rem;
            border-top: 1px solid var(--border-color);
            background: var(--bg-glass);
        }
        .order-total-label {
            font-size: 0.85rem;
            color: var(--text-secondary);
        }
        .order-total-amount {
            font-family: var(--font-display);
            font-size: 1.25rem;
            font-weight: 800;
            color: var(--primary);
        }
        .order-payment-chip {
            font-size: 0.75rem;
            padding: 3px 10px;
            background: var(--bg-input);
            border-radius: var(--radius-full);
            color: var(--text-muted);
            border: 1px solid var(--border-color);
        }
        .btn-reorder {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            padding: 8px 18px;
            border-radius: var(--radius-full);
            background: var(--primary);
            color: #fff;
            font-size: 0.82rem;
            font-weight: 600;
            text-decoration: none;
            transition: background var(--transition-fast), transform var(--transition-fast);
        }
        .btn-reorder:hover {
            background: var(--primary-light);
            transform: scale(1.03);
        }

        /* ── Empty state ────────────────────────────────── */
        .history-empty {
            text-align: center;
            padding: 5rem 1rem;
        }
        .history-empty .empty-icon { font-size: 4rem; margin-bottom: 1rem; }
        .history-empty h2 { font-family: var(--font-display); font-size: 1.6rem; margin-bottom: 0.5rem; }
        .history-empty p  { color: var(--text-secondary); margin-bottom: 2rem; }

        /* ── Summary bar ────────────────────────────────── */
        .history-summary-bar {
            display: flex;
            gap: 1.5rem;
            flex-wrap: wrap;
            align-items: center;
            background: var(--bg-card);
            border: 1px solid var(--border-color);
            border-radius: var(--radius-md);
            padding: 1rem 1.5rem;
            margin-bottom: 2rem;
            backdrop-filter: blur(20px);
        }
        .summary-stat {
            display: flex;
            flex-direction: column;
            gap: 2px;
        }
        .summary-stat .stat-value {
            font-family: var(--font-display);
            font-size: 1.4rem;
            font-weight: 800;
            color: var(--primary);
        }
        .summary-stat .stat-label {
            font-size: 0.75rem;
            color: var(--text-muted);
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }
        .summary-divider {
            width: 1px;
            height: 36px;
            background: var(--border-color);
        }

        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(20px); }
            to   { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <!-- ===== Navbar ===== -->
    <nav class="navbar">
        <div class="navbar-container">
            <a href="${pageContext.request.contextPath}/home" class="navbar-brand">
                <span class="logo-icon">🍕</span>
                Food<span class="brand-accent">Express</span>
            </a>

            <div class="navbar-links">
                <a href="${pageContext.request.contextPath}/home">🏠 Home</a>
                <a href="${pageContext.request.contextPath}/order-history" class="active">📦 Orders</a>
                <a href="${pageContext.request.contextPath}/cart" class="cart-link">
                    🛒 Cart
                    <c:if test="${not empty sessionScope.cartCount && sessionScope.cartCount > 0}">
                        <span class="cart-badge"><c:out value="${sessionScope.cartCount}"/></span>
                    </c:if>
                </a>
                <div class="user-info">
                    <div class="user-avatar"><c:out value="${fn:substring(sessionScope.userName, 0, 1)}"/></div>
                    <span><c:out value="${sessionScope.userName}"/></span>
                </div>
                <a href="${pageContext.request.contextPath}/logout" class="btn-logout">🚪 Logout</a>
            </div>
        </div>
    </nav>

    <!-- ===== Main Content ===== -->
    <div class="container">
        <div class="history-container">

            <!-- Page Header -->
            <div class="page-header">
                <h1>📦 Order History</h1>
                <p>Track all your past orders in one place</p>
            </div>

            <c:choose>
                <%-- ===== Has Orders ===== --%>
                <c:when test="${not empty orderItemsMap}">

                    <!-- Summary Bar -->
                    <div class="history-summary-bar">
                        <div class="summary-stat">
                            <span class="stat-value"><c:out value="${orderCount}"/></span>
                            <span class="stat-label">Total Orders</span>
                        </div>
                        <div class="summary-divider"></div>
                        <div class="summary-stat">
                            <span class="stat-value" style="color: var(--success);">
                                <%-- Count delivered orders --%>
                                <c:set var="deliveredCount" value="0"/>
                                <c:forEach var="entry" items="${orderItemsMap}">
                                    <c:if test="${entry.key.status == 'DELIVERED'}">
                                        <c:set var="deliveredCount" value="${deliveredCount + 1}"/>
                                    </c:if>
                                </c:forEach>
                                <c:out value="${deliveredCount}"/>
                            </span>
                            <span class="stat-label">Delivered</span>
                        </div>
                        <div class="summary-divider"></div>
                        <div class="summary-stat">
                            <span class="stat-value">
                                <%-- Sum totals --%>
                                <c:set var="grandTotal" value="0"/>
                                <c:forEach var="entry" items="${orderItemsMap}">
                                    <c:set var="grandTotal" value="${grandTotal + entry.key.totalAmount}"/>
                                </c:forEach>
                                ₹<fmt:formatNumber value="${grandTotal}" pattern="#,##0"/>
                            </span>
                            <span class="stat-label">Total Spent</span>
                        </div>
                    </div>

                    <!-- Order Cards -->
                    <c:forEach var="entry" items="${orderItemsMap}" varStatus="status">
                        <c:set var="order" value="${entry.key}"/>
                        <c:set var="items" value="${entry.value}"/>

                        <div class="order-card" style="animation-delay: ${status.index * 0.06}s">

                            <!-- Card Header -->
                            <div class="order-card-header">
                                <div class="order-id-label">
                                    Order <span>#<c:out value="${order.orderId}"/></span>
                                </div>

                                <div class="order-meta">
                                    <span>🏪 <c:out value="${order.restaurantName}"/></span>
                                    <span>🗓️ <fmt:formatDate value="${order.orderDate}" pattern="dd MMM yyyy, hh:mm a"/></span>
                                    <span>💳 <c:out value="${order.paymentMode}"/></span>
                                </div>

                                <!-- Status Badge -->
                                <span class="status-badge status-${order.status}">
                                    <c:choose>
                                        <c:when test="${order.status == 'PLACED'}">📋</c:when>
                                        <c:when test="${order.status == 'CONFIRMED'}">✅</c:when>
                                        <c:when test="${order.status == 'PREPARING'}">👨‍🍳</c:when>
                                        <c:when test="${order.status == 'OUT_FOR_DELIVERY'}">🛵</c:when>
                                        <c:when test="${order.status == 'DELIVERED'}">🎉</c:when>
                                        <c:when test="${order.status == 'CANCELLED'}">❌</c:when>
                                        <c:otherwise>📦</c:otherwise>
                                    </c:choose>
                                    <c:out value="${order.status}"/>
                                </span>
                            </div>

                            <!-- Card Body -->
                            <div class="order-card-body">
                                <div class="order-restaurant-name">
                                    <c:out value="${order.restaurantName}"/>
                                    <small><c:out value="${fn:length(items)}"/> item(s)</small>
                                </div>

                                <!-- Items List -->
                                <ul class="order-items-list">
                                    <c:forEach var="item" items="${items}">
                                        <li class="order-item-row">
                                            <span>
                                                <span class="item-qty">×<c:out value="${item.quantity}"/></span>
                                                <c:out value="${item.menuName}"/>
                                            </span>
                                            <span class="item-price">
                                                ₹<fmt:formatNumber value="${item.price * item.quantity}" pattern="#,##0.00"/>
                                            </span>
                                        </li>
                                    </c:forEach>
                                </ul>

                                <!-- Delivery Address -->
                                <div style="font-size: 0.82rem; color: var(--text-muted);">
                                    📍 <c:out value="${order.address}"/>
                                </div>
                            </div>

                            <!-- Card Footer -->
                            <div class="order-card-footer">
                                <div>
                                    <div class="order-total-label">Order Total</div>
                                    <div class="order-total-amount">
                                        ₹<fmt:formatNumber value="${order.totalAmount}" pattern="#,##0.00"/>
                                    </div>
                                </div>

                                <a href="${pageContext.request.contextPath}/menu?restaurantId=${order.restaurantId}"
                                   class="btn-reorder">
                                    🔄 Reorder
                                </a>
                            </div>

                        </div><%-- /.order-card --%>
                    </c:forEach>

                </c:when>

                <%-- ===== No Orders Yet ===== --%>
                <c:otherwise>
                    <div class="history-empty">
                        <div class="empty-icon">📭</div>
                        <h2>No orders yet</h2>
                        <p>Looks like you haven't placed any orders. Start exploring and order something delicious!</p>
                        <a href="${pageContext.request.contextPath}/home" class="btn btn-primary btn-lg">
                            🍕 Browse Restaurants
                        </a>
                    </div>
                </c:otherwise>
            </c:choose>

        </div>
    </div>

    <script src="${pageContext.request.contextPath}/js/app.js"></script>
</body>
</html>
