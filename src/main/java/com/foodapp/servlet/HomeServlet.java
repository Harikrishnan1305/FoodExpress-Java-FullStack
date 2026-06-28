package com.foodapp.servlet;

import com.foodapp.dao.RestaurantDAO;
import com.foodapp.dao.impl.RestaurantDAOImpl;
import com.foodapp.model.Restaurant;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

/**
 * HomeServlet — Lists restaurants with pagination (6 per page).
 *
 * URL params:
 *   ?page=N        — page number (1-based, defaults to 1)
 *   ?search=text   — search query (pagination still applies)
 *
 * Request attributes set for home.jsp:
 *   restaurants   List<Restaurant>  — items for the current page
 *   currentPage   int               — active page number
 *   totalPages    int               — total number of pages
 *   totalCount    int               — total matching restaurants
 *   searchQuery   String            — current search term (or null)
 *   pageSize      int               — items per page (6)
 */
@WebServlet("/home")
public class HomeServlet extends HttpServlet {

    private static final Logger log = LoggerFactory.getLogger(HomeServlet.class);
    private static final int PAGE_SIZE = 6;   // restaurants per page

    private RestaurantDAO restaurantDAO;

    @Override
    public void init() throws ServletException {
        restaurantDAO = new RestaurantDAOImpl();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Auth guard
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("user") == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        // ── Parse page number ────────────────────────────────────────────────
        int currentPage = 1;
        String pageParam = request.getParameter("page");
        if (pageParam != null && !pageParam.isBlank()) {
            try {
                currentPage = Integer.parseInt(pageParam.trim());
                if (currentPage < 1) currentPage = 1;
            } catch (NumberFormatException e) {
                currentPage = 1;
            }
        }

        // ── Search vs browse ─────────────────────────────────────────────────
        String search = request.getParameter("search");
        boolean isSearch = (search != null && !search.trim().isEmpty());

        List<Restaurant> restaurants;
        int totalCount;

        if (isSearch) {
            String keyword = search.trim();
            totalCount   = restaurantDAO.countSearchResults(keyword);
            int totalPages = computeTotalPages(totalCount);
            currentPage    = clamp(currentPage, 1, Math.max(1, totalPages));

            restaurants = restaurantDAO.searchRestaurants(keyword);
            log.debug("Search: keyword='{}', results={}", keyword, totalCount);

            request.setAttribute("searchQuery", keyword);
        } else {
            totalCount = restaurantDAO.countAllRestaurants();
            int totalPages = computeTotalPages(totalCount);
            currentPage    = clamp(currentPage, 1, Math.max(1, totalPages));
            int offset     = (currentPage - 1) * PAGE_SIZE;

            restaurants = restaurantDAO.getRestaurantsPaged(offset, PAGE_SIZE);
            log.debug("Browse: page={}, offset={}, total={}", currentPage, offset, totalCount);
        }

        int totalPages = computeTotalPages(totalCount);

        // ── Set attributes for JSP ───────────────────────────────────────────
        request.setAttribute("restaurants",  restaurants);
        request.setAttribute("currentPage",  currentPage);
        request.setAttribute("totalPages",   totalPages);
        request.setAttribute("totalCount",   totalCount);
        request.setAttribute("pageSize",     PAGE_SIZE);

        request.getRequestDispatcher("/home.jsp").forward(request, response);
    }

    // ── Helpers ──────────────────────────────────────────────────────────────

    private int computeTotalPages(int totalCount) {
        return (int) Math.ceil((double) totalCount / PAGE_SIZE);
    }

    private int clamp(int value, int min, int max) {
        return Math.max(min, Math.min(max, value));
    }
}
