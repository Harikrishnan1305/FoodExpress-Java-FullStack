package com.foodapp.servlet;

import com.foodapp.dao.UserDAO;
import com.foodapp.dao.impl.UserDAOImpl;
import com.foodapp.model.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

/**
 * UpdateProfileServlet — Handles updating user's personal information.
 */
@WebServlet("/update-profile")
public class UpdateProfileServlet extends HttpServlet {

    private static final Logger log = LoggerFactory.getLogger(UpdateProfileServlet.class);
    private UserDAO userDAO;

    @Override
    public void init() throws ServletException {
        userDAO = new UserDAOImpl();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("user") == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        User currentUser = (User) session.getAttribute("user");
        
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        if (name == null || name.trim().isEmpty()) {
            session.setAttribute("errorMsg", "Name cannot be empty.");
            response.sendRedirect(request.getContextPath() + "/profile.jsp");
            return;
        }

        // Update fields
        currentUser.setName(name.trim());
        currentUser.setEmail(email != null ? email.trim() : "");
        currentUser.setPhone(phone != null ? phone.trim() : "");
        currentUser.setAddress(address != null ? address.trim() : "");

        boolean success = userDAO.updateUser(currentUser);

        if (success) {
            // Update session
            session.setAttribute("user", currentUser);
            session.setAttribute("userName", currentUser.getName());
            session.setAttribute("successMsg", "Profile updated successfully!");
            log.info("User {} updated profile.", currentUser.getUsername());
        } else {
            session.setAttribute("errorMsg", "Failed to update profile. Please try again.");
            log.error("Failed to update profile for user {}", currentUser.getUsername());
        }

        response.sendRedirect(request.getContextPath() + "/profile.jsp");
    }
}
