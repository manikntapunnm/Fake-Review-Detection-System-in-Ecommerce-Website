<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.IOException, java.sql.Connection, java.sql.PreparedStatement, java.sql.SQLException" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback Action</title>
    <!-- Include SweetAlert CDN links -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.14.1/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.14.1/dist/sweetalert2.all.min.js"></script>
</head>
<body>

<%
    // Assuming you have the necessary variables declared and initialized
    String email = request.getParameter("email");
    out.println(email);
    String productid = request.getParameter("productid");
    out.println(productid);
    String cartid = request.getParameter("cartid");
    out.println(cartid);
    String orderid = request.getParameter("orderid");
    out.println(orderid);
    String message = request.getParameter("message");
    out.println(message);
    String rating = request.getParameter("rating");
    out.println(rating);
    String category = request.getParameter("category");
    out.println(category);
    String sentiment;
    double averageRating = Double.parseDouble(rating); // Assuming rating is a double
    if (averageRating >= 0 && averageRating < 1) {
        sentiment = "Very Negative";
    } else if (averageRating >= 1 && averageRating < 2) {
        sentiment = "Negative";
    } else if (averageRating >= 2 && averageRating < 3) {
        sentiment = "Neutral";
    } else if (averageRating >= 3 && averageRating < 4) {
        sentiment = "Positive";
    } else {
        sentiment = "Very Positive";
    }
    out.println("Sentiment: " + sentiment);

    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;

    try {
        connection = new Dbconn.dbconn().getConnection();

        // Check if feedback for this item with this email already exists
        String checkExistingFeedbackSql = "SELECT * FROM feedback WHERE customer_email = ? AND product_id = ? AND category=?";
        preparedStatement = connection.prepareStatement(checkExistingFeedbackSql);
        preparedStatement.setString(1, email);
        preparedStatement.setString(2, productid);
        
         preparedStatement.setString(3, category);
        resultSet = preparedStatement.executeQuery();

        if (resultSet.next()) {
%>
            <script>
                Swal.fire({
                    icon: 'error',
                    title: 'Feedback Already Given',
                    text: 'Feedback for this item with this email already exists.',
                    confirmButtonText: 'OK',
                    allowOutsideClick: false
                }).then((result) => {
                    if (result.isConfirmed) {
                        window.location.href = 'customers-feedback.jsp?email=<%= email %>&productid=<%= productid %>&cartid=<%= cartid %>';
                    }
                });
            </script>
<%
        } else {
            // Show a Swal alert for successful submission
            if ("Order".equals(category)) {
                // Insert logic for "Order" category
                String insertSql = "INSERT INTO feedback (customer_email, product_id, cart_id, ratings, feedback, sentiment, order_id,category) " +
                        "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
                preparedStatement = connection.prepareStatement(insertSql);
                preparedStatement.setString(1, email);
                preparedStatement.setString(2, productid);
                preparedStatement.setString(3, cartid);
                preparedStatement.setString(4, rating);
                preparedStatement.setString(5, message);
                preparedStatement.setString(6, sentiment);
                preparedStatement.setString(7, orderid);
                preparedStatement.setString(8, category);
            } else {
                // Insert logic for "Non-Order" category
                String insertSql = "INSERT INTO feedback (customer_email, product_id, ratings, feedback, sentiment, category) " +
                        "VALUES (?, ?, ?, ?, ?, ?)";
                preparedStatement = connection.prepareStatement(insertSql);
                preparedStatement.setString(1, email);
                preparedStatement.setString(2, productid);
                preparedStatement.setString(3, rating);
                preparedStatement.setString(4, message);
                preparedStatement.setString(5, sentiment);
                preparedStatement.setString(6, category);
            }

            int rowsInserted = preparedStatement.executeUpdate();

            if (rowsInserted > 0) {
%>


   <script>
        // Redirect based on the category and include productid and cartid in the query string
       var productid = '<%= productid %>';
        var email = '<%= email %>';
        var redirectUrl = '<%= "Unorder".equals(category) ? "customers-productdetailshome.jsp" : "customers-myorders.jsp" %>' +
                         '?productid=' + productid + '&email=' + email;

        Swal.fire({
            icon: 'success',
            title: 'Feedback Submitted',
            text: 'Thank you for your feedback!',
            confirmButtonText: 'OK',
            allowOutsideClick: false
        }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = redirectUrl;
            }
        });
    </script>
<%
            }
        }
    } catch (SQLException e) {
        e.printStackTrace();
        out.println(e);
    } finally {
        // Close database resources (connection, statement, result set)
        try {
            if (resultSet != null) resultSet.close();
            if (preparedStatement != null) preparedStatement.close();
            if (connection != null) connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
            out.println(e);
        }
    }
%>
</body>
</html>
