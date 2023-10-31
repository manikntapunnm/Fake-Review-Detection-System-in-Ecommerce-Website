<%-- 
    Document   : updatequantity
    Created on : 29-Sept-2023, 3:34:10 pm
    Author     : manikanta
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>

<%
    // Retrieve parameters from the request
    String cartId = request.getParameter("cartid");
    
    String productId = request.getParameter("productid");
    out.println(productId);
    String newQuantity = request.getParameter("quantity");
    out.println(newQuantity);

    // JDBC connection parameters
  double price = Double.parseDouble(request.getParameter("price"));
   double discount = Double.parseDouble(request.getParameter("discount"));


    try {
Connection connection = new Dbconn.dbconn().getConnection();
double discountedPrice = price - (price * discount / 100);
   double actualPrice = discountedPrice * Double.parseDouble(newQuantity);
   out.println(actualPrice);
        // Update the quantity in the cart table
        String updateQuery = "UPDATE cart SET quantity = ?, actualprice=?  WHERE cart_id = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(updateQuery)) {
            preparedStatement.setString(1, newQuantity);
              preparedStatement.setDouble(2, actualPrice);
            preparedStatement.setString(3, cartId);
            
            int rowsAffected = preparedStatement.executeUpdate();
            
            // Check if the update was successful
            if (rowsAffected > 0) {
               //response.sendRedirect("customers-productdetailshome.jsp?");
            } else {
                out.println("Failed to update quantity.");
            }
        }

        // Close the database connection
        connection.close();
    } catch (SQLException e) {
        e.printStackTrace();
        out.println(e);
    }
%>
