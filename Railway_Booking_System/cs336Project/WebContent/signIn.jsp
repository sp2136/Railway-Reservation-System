<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" 
	import="com.cs336.pkg.*, java.io.*, java.util.*, java.sql.*, jakarta.servlet.http.*, jakarta.servlet.*"%>

<%
    try {
        ApplicationDB db = new ApplicationDB(); Connection con = db.getConnection();
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username == null || username.isEmpty()) {
            session.setAttribute("usernameError", "Please enter a username.");
        }
        if (password == null || password.isEmpty()) {
            session.setAttribute("passwordError", "Please enter a password.");
        }

        if (session.getAttribute("usernameError") == null && session.getAttribute("passwordError") == null) {
            String query = "SELECT user_id FROM users WHERE username = ? AND password = ?";
            
            PreparedStatement ps  =  con.prepareStatement(query);
            ps.setString(1, username); ps.setString(2, password); 
            
            ResultSet result = ps.executeQuery();

            if (result.next()) { session.setAttribute("user_id", result.getInt("user_id"));
                session.setAttribute("username", username); response.sendRedirect("userPage.jsp");
            } 
            
            else {
                session.setAttribute("generalError", "User not found, or the password is incorrect.");
                response.sendRedirect("loginPage.jsp");
            }
        } 
        
        else { response.sendRedirect("loginPage.jsp"); } con.close();
    }
	catch (Exception e) { session.setAttribute("generalError", "An unexpected error occurred. Please try again.");
        response.sendRedirect("loginPage.jsp");
    }
%>