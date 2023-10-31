<%-- 
    Document   : admin-login-action
    Created on : 26-Sept-2023, 3:08:45 pm
    Author     : manikanta
--%>


<%@page import="java.io.IOException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*"%>
<%@ page import="Dbconn.dbconn"%>

<%@ page import="java.io.IOException" %>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.annotation.WebServlet" %>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
    </head>
    <body>

<%
try {
    String username = request.getParameter("user");
    String password = request.getParameter("pass");

    Connection connection = dbconn.getConnection();
    PreparedStatement statement = connection.prepareStatement("SELECT * FROM admin WHERE BINARY user = ? AND pass = ?");
    statement.setString(1, username);
    statement.setString(2, password);

    ResultSet resultSet = statement.executeQuery();

    if (resultSet.next()) {
        String storedUsername = resultSet.getString("user");
        String storedPassword = resultSet.getString("pass");

        if (username.equals(storedUsername) && password.equals(storedPassword)) {
            // Login successful
            
            session.setAttribute("adminloginsuccess", "Success");
            response.sendRedirect("admin-home.jsp");
        } else {
            // Login failed
            
            session.setAttribute("adminloginfailed", "Failed");
            response.sendRedirect("main-admin-login.jsp");
        }
    } else {
        // User not found
     
        session.setAttribute("adminusernotfound", "Your Username or Password is Incorrect please Try Again.");
        response.sendRedirect("main-admin-login.jsp");
    }
    
    connection.close();
} catch (SQLException e) {
    // Handle database errors here
    e.printStackTrace();
    out.println(e); // Redirect to an error page
} catch (IOException e) {
    // Handle other exceptions here
    e.printStackTrace();
    out.println(e); // Redirect to an error page
}
%>


  

    </body>
</html>

