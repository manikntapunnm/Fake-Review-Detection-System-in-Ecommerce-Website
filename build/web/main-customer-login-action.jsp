<%-- 
    Document   : main-customer-login-action
    Created on : 27-Sept-2023, 10:49:06 am
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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.min.css">
    </head>
    <body>

<%
try {
    String username = request.getParameter("userid");
    String password = request.getParameter("password");

    Connection connection = dbconn.getConnection();
    PreparedStatement statement = connection.prepareStatement("SELECT * FROM customers WHERE BINARY userid = ? AND password = ?");
    statement.setString(1, username);
    statement.setString(2, password);

    ResultSet resultSet = statement.executeQuery();

    if (resultSet.next()) {
        String storedUsername = resultSet.getString("userid");
        String storedPassword = resultSet.getString("password");
        String userEmail = resultSet.getString("email");

        if (username.equals(storedUsername) && password.equals(storedPassword)) {
            // Successful login
            //response.sendRedirect("customers-home.jsp");
             session.setAttribute("userEmail", userEmail);
            %>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>

<script>
    Swal.fire({
        icon: 'success', // Unicode code for the smiley emoji
        title: 'Successfully Logged In',
        text: 'Welcome to the Dashboard'
    }).then(function() {
        window.location.href = 'customers-home.jsp';
    });
</script>

<%
        } else {
            // Incorrect credentials, show SweetAlert
%>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>

<script>
    Swal.fire({
        icon: 'error',
        title: 'Login Failed',
        text: 'Incorrect username or password'
    }).then(function() {
        window.location.href = 'main-customers-login.jsp';
    });
</script>

<%
        }
    } else {
        // User not found, show SweetAlert
%>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>

<script>
    Swal.fire({
        icon: 'error',
        title: 'User Not Found',
        text: 'The provided user does not exist'
    }).then(function() {
        window.location.href = 'main-customers-login.jsp';
    });
</script>

<%
    }
    
    connection.close();
} catch (SQLException e) {
    // Handle database errors here
    e.printStackTrace();
    out.println(e); // Redirect to an error page
} 



//catch (IOException e) {
//    // Handle other exceptions here
//    e.printStackTrace();
//    out.println(e); // Redirect to an error page
//}
%>

    </body>
</html>
