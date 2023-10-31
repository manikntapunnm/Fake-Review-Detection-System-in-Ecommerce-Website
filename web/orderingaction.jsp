<%-- 
    Document   : orderingaction
    Created on : 29-Sept-2023, 5:38:55 pm
    Author     : manikanta

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.io.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
    </head>
    <body>
        <%
            try {
                String email = request.getParameter("email");
                String amount = request.getParameter("totalprice");
                
                int orderId = 0;

                Connection connection = null;
                try {
                    connection = new Dbconn.dbconn().getConnection();

                    String insertQuery = "INSERT INTO orders (email, price) VALUES (?, ?)";
                    try (PreparedStatement insertStatement = connection.prepareStatement(insertQuery, PreparedStatement.RETURN_GENERATED_KEYS)) {
                        insertStatement.setString(1, email);
                        insertStatement.setString(2, amount);
                        int rowsInserted = insertStatement.executeUpdate();

                        if (rowsInserted > 0) {
                            try (ResultSet generatedKeys = insertStatement.getGeneratedKeys()) {
                                if (generatedKeys.next()) {
                                    orderId = generatedKeys.getInt(1);
                                    out.println("Order ID: " + orderId);
                                } else {
                                    out.println("Failed to retrieve the generated order ID.");
                                }
                            }

                                String updateQuery = "UPDATE cart SET  order_id = ? WHERE email = ? and checkstatus='Pending'";
                                try (PreparedStatement updateStatement = connection.prepareStatement(updateQuery)) {
                                    updateStatement.setInt(1, orderId); // Assuming orderId is the variable holding the order ID
                                    updateStatement.setString(2, email);
                                    int rowsAffected = updateStatement.executeUpdate();

                                if (rowsAffected > 0) {
                                    String successMessage = "Update and insert successfully!";
                                    out.println("<script>");
                                    out.println("Swal.fire({");
                                    out.println("  icon: 'success',");
                                    out.println("  title: 'Success',");
                                    out.println("  text: '" + successMessage + "',");
                                    out.println("}).then(function() { window.location.href = 'customers-checkout.jsp?email=" + email + "&amount=" +amount+"'; });");
                                    out.println("</script>");
                                } else {
                                    out.println("Failed to update checkstatus in cart table.");
                                }
                            }
                        } else {
                            out.println("Failed to insert into orders table.");
                        }
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                    out.println("Error: " + e.getMessage());
                } finally {
                    try {
                        if (connection != null) {
                            connection.close();
                        }
                    } catch (SQLException e) {
                        e.printStackTrace();
                        out.println("Error closing connection: " + e.getMessage());
                    }
                }
            } catch (Exception e) {
                
                out.println(e);
            }
        %>
    </body>
</html>--%>

<%--
    Document   : orderingaction
    Created on : 29-Sept-2023, 5:38:55 pm
    Author     : manikanta
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.io.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
    </head>
    <body>
        <%
            try {
                String email = request.getParameter("email");
                String amount = request.getParameter("totalprice");
                if (amount != null) {
                int orderId = 0;

                Connection connection = null;
                try {
                    connection = new Dbconn.dbconn().getConnection();

                    // Check if an order with the same email, price, and payment status 'Pending' already exists
                    String selectQuery = "SELECT order_id FROM orders WHERE email = ? AND price = ? AND payment = 'Pending'";
                    try (PreparedStatement selectStatement = connection.prepareStatement(selectQuery)) {
                        selectStatement.setString(1, email);
                        selectStatement.setString(2, amount);

                        ResultSet existingOrderResult = selectStatement.executeQuery();

                        if (existingOrderResult.next()) {
                            // If an existing order is found, retrieve its order ID
                            orderId = existingOrderResult.getInt("order_id");
                        } else {
                            // If no existing order is found, insert a new order
                            String insertQuery = "INSERT INTO orders (email, price) VALUES (?, ?)";
                            try (PreparedStatement insertStatement = connection.prepareStatement(insertQuery, PreparedStatement.RETURN_GENERATED_KEYS)) {
                                insertStatement.setString(1, email);
                                insertStatement.setString(2, amount);
                                int rowsInserted = insertStatement.executeUpdate();

                                if (rowsInserted > 0) {
                                    try (ResultSet generatedKeys = insertStatement.getGeneratedKeys()) {
                                        if (generatedKeys.next()) {
                                            orderId = generatedKeys.getInt(1);
                                            out.println("Order ID: " + orderId);
                                        } else {
                                            out.println("Failed to retrieve the generated order ID.");
                                        }
                                    }
                                } else {
                                    out.println("Failed to insert into orders table.");
                                }
                            }
                        }
                    }

                    // Continue with the update of the cart table if orderId is available
                    if (orderId > 0) {
                        String updateQuery = "UPDATE cart SET order_id = ? WHERE email = ? AND checkstatus = 'Pending'";
                        try (PreparedStatement updateStatement = connection.prepareStatement(updateQuery)) {
                            updateStatement.setInt(1, orderId);
                            updateStatement.setString(2, email);
                            int rowsAffected = updateStatement.executeUpdate();

                            if (rowsAffected > 0) {

                                
                                response.sendRedirect("customers-checkout.jsp?email=" + email + "&amount=" + amount);

                            } else {
                               // out.println("Failed to update checkstatus in cart table.");
                                 String successMessage = "Failed! Return to Previous page";
                                out.println("<script>");
                                out.println("Swal.fire({");
                                out.println("  icon: 'error',");
                                out.println("  title: 'Failed',");
                                out.println("  text: '" + successMessage + "',");
                                out.println("}).then(function() { window.location.href = 'customers-mycart.jsp?email=" + email + "&amount=" + amount + "'; });");
                                out.println("</script>");
                            }
                        }
                    }
                    
            
                } catch (SQLException e) {
                    e.printStackTrace();
                    out.println("Error: " + e.getMessage());
                } finally {
                    try {
                        if (connection != null) {
                            connection.close();
                        }
                    } catch (SQLException e) {
                        e.printStackTrace();
                        out.println("Error closing connection: " + e.getMessage());
                    }
                }
                
                  } else {
                    out.println("Amount is null. No processing done.");
                }
                
            } catch (Exception e) {
                out.println(e);
            }
        %>
    </body>
</html>

