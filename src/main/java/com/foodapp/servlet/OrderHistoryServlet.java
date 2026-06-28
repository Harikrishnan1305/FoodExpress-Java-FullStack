package com.foodapp.servlet;

import com.foodapp.dao.OrderDAO;
import com.foodapp.dao.impl.OrderDAOImpl;
import com.foodapp.model.Order;
import com.foodapp.model.OrderItem;
import com.foodapp.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * OrderHistoryServlet — Shows all past orders for the logged-in user.
 * URL: /order-history (GET)
 *
 * Fetches orders via OrderDAO.getOrdersByUserId() then loads items for
 * each order. Passes a Map<Order, List<OrderItem>> to the JSP so the
 * view can expand each order's items without extra round-trips.
 */
@WebServlet("/order-history")
public class OrderHistoryServlet extends HttpServlet {

    private OrderDAO orderDAO;

    @Override
    public void init() throws ServletException {
        orderDAO = new OrderDAOImpl();
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

        User user = (User) session.getAttribute("user");

        // Fetch all orders for this user (already sorted DESC by order_date)
        List<Order> orders = orderDAO.getOrdersByUserId(user.getId());

        // Build a LinkedHashMap to preserve order sequence in JSP
        // Key = Order, Value = its list of OrderItems
        Map<Order, List<OrderItem>> orderItemsMap = new LinkedHashMap<>();
        for (Order order : orders) {
            List<OrderItem> items = orderDAO.getOrderItems(order.getOrderId());
            orderItemsMap.put(order, items != null ? items : new ArrayList<>());
        }

        request.setAttribute("orderItemsMap", orderItemsMap);
        request.setAttribute("orderCount", orders.size());
        request.getRequestDispatcher("/order-history.jsp").forward(request, response);
    }
}
