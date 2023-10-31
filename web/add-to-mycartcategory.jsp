<%-- 
    Document   : add-to-mywishlist
    Created on : 29-Sept-2023, 12:59:25 pm
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
    </head>
    <body>
        <%
// Assuming you have a dbconn.jsp file that handles the database connection

    // Process form submission
    int productid = Integer.parseInt(request.getParameter("productid"));
    out.println(productid);
    String email = request.getParameter("email");
out.println(email);
 double price = Double.parseDouble(request.getParameter("price"));
    double discountPercentage = Double.parseDouble(request.getParameter("discount"));

    try {
  Connection connection = new Dbconn.dbconn().getConnection();
  
  double discountedPrice = price - (price * discountPercentage / 100);

        String insertQuery = "INSERT INTO cart (product_id, email,actualprice) VALUES (?, ?,?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(insertQuery)) {
            preparedStatement.setInt(1, productid);
            preparedStatement.setString(2, email);
             preparedStatement.setDouble(3, discountedPrice);

            int rowsAffected = preparedStatement.executeUpdate();

            if (rowsAffected > 0) {
            
            String successMessage = "Added successfully.";
                out.println("<script>");
                out.println("Swal.fire({");
                out.println("  icon: 'success',");
                out.println("  title: 'Success',");
                out.println("  text: '" + successMessage + "',");
                out.println("}).then(function() { window.location.href = 'customers-category.jsp'; });");
                out.println("</script>");
                // Successful insertion, redirect to mywishlist.jsp
               // response.sendRedirect("customers-mywishlist.jsp");
                return;  // This return is important to stop further processing of the JSP page
            } else {
                out.println("Failed to add item to wishlist.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            out.println(e);
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println(e);
    }

%>
    </body>
</html>
