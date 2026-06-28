<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Browse restaurants and order food online with FoodExpress">
    <title>FoodExpress — Home</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
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
                <a href="${pageContext.request.contextPath}/home" class="active">🏠 Home</a>
                <a href="${pageContext.request.contextPath}/order-history">📦 Orders</a>
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
        <!-- Page Header -->
        <div class="page-header">
            <h1>🔥 Discover Restaurants</h1>
            <p>Order delicious food from the best restaurants near you</p>
        </div>

        <!-- Search Bar -->
        <div class="search-container">
            <form class="search-form" action="${pageContext.request.contextPath}/home" method="GET">
                <span class="search-icon">🔍</span>
                <input type="text" name="search" id="searchInput"
                       placeholder="Search restaurants or cuisines..."
                       value="<c:out value='${searchQuery}'/>" autocomplete="off">
                <button type="submit">Search</button>
            </form>
        </div>

        <!-- Search Results Info -->
        <c:if test="${not empty searchQuery}">
            <div class="alert alert-info" style="max-width: 600px; margin: 0 auto 1.5rem;">
                🔍 Showing results for "<strong><c:out value="${searchQuery}"/></strong>"
                &nbsp;&mdash;&nbsp;<c:out value="${totalCount}"/> restaurant(s) found
                <a href="${pageContext.request.contextPath}/home" style="margin-left: auto; color: var(--primary);">✕ Clear</a>
            </div>
        </c:if>

        <!-- Restaurant Cards Grid -->
        <c:choose>
            <c:when test="${not empty restaurants}">
                <div class="cards-grid">
                    <c:forEach var="restaurant" items="${restaurants}" varStatus="status">
                        <div class="restaurant-card"
                             data-href="${pageContext.request.contextPath}/menu?restaurantId=${restaurant.id}"
                             style="animation-delay: ${status.index * 0.05}s">
                            <div class="card-image">
                                <img src="<c:out value='${restaurant.imageUrl}'/>" alt="<c:out value='${restaurant.name}'/>"
                                     onerror="this.src='https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?w=400'">
                                <div class="rating-badge">
                                    ⭐ ${restaurant.rating}
                                </div>
                            </div>
                            <div class="card-body">
                                <h3 class="card-title"><c:out value="${restaurant.name}"/></h3>
                                <p class="card-cuisine"><c:out value="${restaurant.cuisine}"/></p>
                                <div class="card-meta">
                                    <span>🕐 ${restaurant.deliveryTime} min</span>
                                    <span>📍 Nearby</span>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </c:when>
            <c:otherwise>
                <div class="empty-state">
                    <div class="empty-icon">🍽️</div>
                    <h2>No restaurants found</h2>
                    <p>Try a different search term or browse all restaurants</p>
                    <a href="${pageContext.request.contextPath}/home" class="btn btn-primary">View All Restaurants</a>
                </div>
            </c:otherwise>
        </c:choose>

        <%-- ===== Pagination controls (only shown when NOT searching) ===== --%>
        <c:if test="${empty searchQuery && totalPages > 1}">
            <div style="
                display: flex;
                justify-content: center;
                align-items: center;
                gap: 0.5rem;
                padding: 2.5rem 0 1rem;
                flex-wrap: wrap;
            ">

                <%-- Previous button --%>
                <c:choose>
                    <c:when test="${currentPage > 1}">
                        <a href="${pageContext.request.contextPath}/home?page=${currentPage - 1}"
                           style="
                               display: inline-flex; align-items: center; gap: 6px;
                               padding: 9px 18px; border-radius: var(--radius-full);
                               background: var(--bg-card); border: 1px solid var(--border-color);
                               color: var(--text-primary); text-decoration: none; font-size: 0.88rem;
                               font-weight: 600; transition: all var(--transition-fast);
                               backdrop-filter: blur(10px);
                           "
                           onmouseover="this.style.borderColor='var(--primary)';this.style.color='var(--primary)'"
                           onmouseout="this.style.borderColor='var(--border-color)';this.style.color='var(--text-primary)'"
                        >&#8592; Prev</a>
                    </c:when>
                    <c:otherwise>
                        <span style="
                            display: inline-flex; align-items: center;
                            padding: 9px 18px; border-radius: var(--radius-full);
                            background: var(--bg-glass); border: 1px solid var(--border-color);
                            color: var(--text-muted); font-size: 0.88rem; font-weight: 600;
                            cursor: not-allowed;
                        ">&#8592; Prev</span>
                    </c:otherwise>
                </c:choose>

                <%-- Page number buttons --%>
                <c:forEach begin="1" end="${totalPages}" var="p">
                    <c:choose>
                        <c:when test="${p == currentPage}">
                            <%-- Active page --%>
                            <span style="
                                display: inline-flex; align-items: center; justify-content: center;
                                width: 40px; height: 40px; border-radius: var(--radius-full);
                                background: var(--primary); color: #fff;
                                font-size: 0.88rem; font-weight: 700;
                                box-shadow: 0 0 14px var(--primary-glow);
                            "><c:out value="${p}"/></span>
                        </c:when>
                        <c:otherwise>
                            <a href="${pageContext.request.contextPath}/home?page=${p}"
                               style="
                                   display: inline-flex; align-items: center; justify-content: center;
                                   width: 40px; height: 40px; border-radius: var(--radius-full);
                                   background: var(--bg-card); border: 1px solid var(--border-color);
                                   color: var(--text-secondary); text-decoration: none;
                                   font-size: 0.88rem; font-weight: 600;
                                   transition: all var(--transition-fast);
                                   backdrop-filter: blur(10px);
                               "
                               onmouseover="this.style.background='var(--primary)';this.style.color='#fff';this.style.borderColor='var(--primary)'"
                               onmouseout="this.style.background='var(--bg-card)';this.style.color='var(--text-secondary)';this.style.borderColor='var(--border-color)'"
                            ><c:out value="${p}"/></a>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>

                <%-- Next button --%>
                <c:choose>
                    <c:when test="${currentPage < totalPages}">
                        <a href="${pageContext.request.contextPath}/home?page=${currentPage + 1}"
                           style="
                               display: inline-flex; align-items: center; gap: 6px;
                               padding: 9px 18px; border-radius: var(--radius-full);
                               background: var(--bg-card); border: 1px solid var(--border-color);
                               color: var(--text-primary); text-decoration: none; font-size: 0.88rem;
                               font-weight: 600; transition: all var(--transition-fast);
                               backdrop-filter: blur(10px);
                           "
                           onmouseover="this.style.borderColor='var(--primary)';this.style.color='var(--primary)'"
                           onmouseout="this.style.borderColor='var(--border-color)';this.style.color='var(--text-primary)'"
                        >Next &#8594;</a>
                    </c:when>
                    <c:otherwise>
                        <span style="
                            display: inline-flex; align-items: center;
                            padding: 9px 18px; border-radius: var(--radius-full);
                            background: var(--bg-glass); border: 1px solid var(--border-color);
                            color: var(--text-muted); font-size: 0.88rem; font-weight: 600;
                            cursor: not-allowed;
                        ">Next &#8594;</span>
                    </c:otherwise>
                </c:choose>

            </div><%-- /pagination row --%>

            <%-- Page info line --%>
            <p style="text-align: center; color: var(--text-muted); font-size: 0.78rem; margin-bottom: 2rem;">
                Page <c:out value="${currentPage}"/> of <c:out value="${totalPages}"/>
                &nbsp;&bull;&nbsp; <c:out value="${totalCount}"/> restaurants total
            </p>
        </c:if>
    </div>

    <script src="${pageContext.request.contextPath}/js/app.js"></script>
</body>
</html>
