<%-- 
    Document   : delete
    Created on : 29-Sept-2023, 4:53:59 pm
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="Dbconn.dbconn" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
    </head>
    <body>
        <%
    String email = request.getParameter("email");
    String cartid = request.getParameter("wishlistid");

    Connection connection = null;
    Statement st = null;

    try {
        connection = new Dbconn.dbconn().getConnection();
        st = connection.createStatement();

        int rowsAffected = st.executeUpdate("DELETE FROM wishlist WHERE wishlist_id='" + cartid + "'");

        if (rowsAffected > 0) {
                   
            String successMessage = "Cart item removed successfully.";

                out.println("<script>");
                out.println("Swal.fire({");
                out.println("  icon: 'success',");
                out.println("  title: 'Success',");
                out.println("  text: '" + successMessage + "',");
                out.println("}).then(function() { window.location.href = 'customers-mywishlist.jsp'; });");
                out.println("</script>");

     
        } else {
            out.println("error");
        }
    } catch (SQLException e) {
        e.printStackTrace();
        // Handle the SQL error as needed
        out.println(e); // Redirect to an appropriate error page or URL
    } finally {
        // Close the resources in the reverse order of their creation
        try {
            if (st != null) {
                st.close();
            }
            if (connection != null) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
            out.println(e);
            // Handle the closing error if needed
        }
    }
%>
    </body>
</html>



 