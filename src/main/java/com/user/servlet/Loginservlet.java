package com.user.servlet;

import java.io.IOException;
import com.DAO.userDAOImpl;
import com.DB.DBConnect;
import com.entity.user;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class Loginservlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            // Initialize DAO and session
            userDAOImpl dao = new userDAOImpl(DBConnect.getConn());
            HttpSession session = req.getSession();

            // Get user credentials from the request
            String email = req.getParameter("email");
            String password = req.getParameter("password");

            // Check if the user is admin
            if ("admin@gmail.com".equals(email) && "admin".equals(password)) {
                user adminUser = new user(); // Create an admin user object if needed
                session.setAttribute("user", adminUser);
                resp.sendRedirect("admin/home.jsp");
                return; // Prevent further execution
            }

            // Attempt to login user
            user userObj = dao.login(email, password);

            if (userObj != null) {
                // Login successful
                session.setAttribute("user", userObj); // Use a meaningful session attribute name
                resp.sendRedirect("home.jsp");
            } else {
                // Login failed
                session.setAttribute("failedMsg", "Invalid email or password");
                resp.sendRedirect("login.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

