<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    String coupon = request.getParameter("coupon");
    String amount = request.getParameter("amount");
    String email = request.getParameter("email");
    Connection connection = null;

    try {
        connection = new Dbconn.dbconn().getConnection();

        // Check if the coupon code exists in the database
        String checkCouponQuery = "SELECT percentage , coupon_id FROM coupons WHERE code = ?";
        try (PreparedStatement checkCouponStatement = connection.prepareStatement(checkCouponQuery)) {
            checkCouponStatement.setString(1, coupon);

            try (ResultSet resultSet = checkCouponStatement.executeQuery()) {
                if (resultSet.next()) {
                    // Coupon code exists, retrieve the percentage value
                    int percentage = resultSet.getInt("percentage");
                    int couponid = resultSet.getInt("coupon_id");
                    out.println("percentage:" + percentage + "%" + "<br>");
                    out.println("couponid:" + couponid + "<br>");

                    // Now, retrieve the actual price from the orders table
                    String getCartProductIdsQuery = "SELECT product_id FROM cart WHERE email = ?";
                    try (PreparedStatement getCartProductIdsStatement = connection.prepareStatement(getCartProductIdsQuery)) {
                        getCartProductIdsStatement.setString(1, email);

                        try (ResultSet cartProductIdsResultSet = getCartProductIdsStatement.executeQuery()) {
                            while (cartProductIdsResultSet.next()) {
                                int productId = cartProductIdsResultSet.getInt("product_id");
                                out.println("productid:" + productId + "<br>");

                                String checkProductCouponQuery = "SELECT coupon_id FROM products WHERE product_id = ?";
                                try (PreparedStatement checkProductCouponStatement = connection.prepareStatement(checkProductCouponQuery)) {
                                    checkProductCouponStatement.setInt(1, productId);

                                    try (ResultSet productCouponResultSet = checkProductCouponStatement.executeQuery()) {
                                        if (productCouponResultSet.next()) {
                                            int productCouponId = productCouponResultSet.getInt("coupon_id");
                                            out.println("productcouponid:" + productCouponId + "<br>");

                                            // If coupon_id exists, update the status in the cart
                                            if (productCouponId == couponid) {
                                                String updateCartStatusQuery = "UPDATE cart SET coupon = 'Applied' WHERE product_id = ? AND coupon = 'pending'";
                                                try (PreparedStatement updateCartStatusStatement = connection.prepareStatement(updateCartStatusQuery)) {
                                                    updateCartStatusStatement.setInt(1, productId);
                                                    int rowsUpdated = updateCartStatusStatement.executeUpdate();

                                                    if (rowsUpdated > 0) {
                                                        out.println("Coupon status updated in the cart for product ID: " + productId);

                                                        // Retrieve the actual price from the orders table
                                                        String getOrderPriceQuery = "SELECT price FROM orders WHERE email = ?";
                                                        try (PreparedStatement getOrderPriceStatement = connection.prepareStatement(getOrderPriceQuery)) {
                                                            getOrderPriceStatement.setString(1, email);

                                                            try (ResultSet orderResultSet = getOrderPriceStatement.executeQuery()) {
                                                                if (orderResultSet.next()) {
                                                                    // Actual price retrieved from the orders table
                                                                    double actualPrice = orderResultSet.getDouble("price");

                                                                    // Calculate the discounted price
                                                                    double discountedPrice = actualPrice - (actualPrice * (percentage / 100.0));

                                                                    // Use hidden fields to pass values to the client-side script
                                                                    out.println("<input type='hidden' id='actualPrice' value='" + actualPrice + "'/>");
                                                                    out.println("<input type='hidden' id='discountedPrice' value='" + discountedPrice + "'/>");

                                                                    // Insert the discounted price into the orders table
                                                                    String updateDiscountedPriceQuery = "UPDATE orders SET price = ? WHERE email = ?";
                                                                    try (PreparedStatement updateDiscountedPriceStatement = connection.prepareStatement(updateDiscountedPriceQuery)) {
                                                                        updateDiscountedPriceStatement.setDouble(1, discountedPrice);
                                                                        updateDiscountedPriceStatement.setString(2, email);
                                                                        int discountedPriceRowsUpdated = updateDiscountedPriceStatement.executeUpdate();

                                                                        if (discountedPriceRowsUpdated > 0) {
                                                                            out.println("Discounted price updated in the orders table for user: " + email);
                                                                        } else {
                                                                            out.println("Error updating discounted price in the orders table for user: " + email);
                                                                        }
                                                                    }

                                                                    // SweetAlert script
                                                                    out.println("<script>");
                                                                    out.println("Swal.fire({");
                                                                    out.println("  icon: 'success',");
                                                                    out.println("  title: 'Success',");
                                                                    out.println("  html: 'Actual Price: ' + document.getElementById('actualPrice').value + '<br>Discounted Price: ' + document.getElementById('discountedPrice').value,");
                                                                    //out.println("}).then(function() { window.location.href = 'customers-checkout.jsp'; });");
                                                                    out.println("}).then(function() { window.location.href = 'customers-checkout.jsp?email=" + email + "&amount=" + amount + "'; });");
                                                                    out.println("</script>");
                                                                } else {
                                                                    out.println("User not found or no order exists for the user.");
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                    
                                                    
                                                    
                                                    
String successMessage = ("Coupon not found in the cart for product ID: " + productId + " or already applied.");

    out.println("<script>");
    out.println("Swal.fire({");
    out.println("  icon: 'success',");
    out.println("  title: 'Success',");
    out.println("  html: '" + successMessage + "',");
    out.println("}).then(function() { window.location.href = 'customers-checkout.jsp?email=" + email + "&amount=" + amount + "'; });");
    out.println("</script>");

  
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else {
                    out.println("Coupon not found.");
                }
            }
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        // Close the database connection in the finally block
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>
</body>
</html>
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
    String coupon = request.getParameter("coupon");
    String amount = request.getParameter("amount");
    String email = request.getParameter("email");
    Connection connection = null;

    try {
        connection = new Dbconn.dbconn().getConnection();

        // Check if the coupon code exists in the database
        String checkCouponQuery = "SELECT percentage, coupon_id FROM coupons WHERE code = ?";
        try (PreparedStatement checkCouponStatement = connection.prepareStatement(checkCouponQuery)) {
            checkCouponStatement.setString(1, coupon);

            try (ResultSet resultSet = checkCouponStatement.executeQuery()) {
                if (resultSet.next()) {
                    // Coupon code exists, retrieve the percentage value
                    int percentage = resultSet.getInt("percentage");
                    int couponid = resultSet.getInt("coupon_id");
                    out.println("percentage:" + percentage + "%" + "<br>");
                    out.println("couponid:" + couponid + "<br>");

                    // Now, retrieve the actual price from the orders table
                    String getCartProductIdsQuery = "SELECT product_id FROM cart WHERE email = ?";
                    try (PreparedStatement getCartProductIdsStatement = connection.prepareStatement(getCartProductIdsQuery)) {
                        getCartProductIdsStatement.setString(1, email);

                        try (ResultSet cartProductIdsResultSet = getCartProductIdsStatement.executeQuery()) {
                            while (cartProductIdsResultSet.next()) {
                                int productId = cartProductIdsResultSet.getInt("product_id");
                                out.println("productid:" + productId + "<br>");

                                String checkProductCouponQuery = "SELECT coupon_id FROM products WHERE product_id = ?";
                                try (PreparedStatement checkProductCouponStatement = connection.prepareStatement(checkProductCouponQuery)) {
                                    checkProductCouponStatement.setInt(1, productId);

                                    try (ResultSet productCouponResultSet = checkProductCouponStatement.executeQuery()) {
                                        if (productCouponResultSet.next()) {
                                            int productCouponId = productCouponResultSet.getInt("coupon_id");
                                            out.println("productcouponid:" + productCouponId + "<br>");

                                            // If coupon_id exists, update the status in the cart
                                            if (productCouponId == couponid) {
                                                String updateCartStatusQuery = "UPDATE cart SET coupon = 'Applied' WHERE product_id = ? AND coupon = 'pending'";
                                                try (PreparedStatement updateCartStatusStatement = connection.prepareStatement(updateCartStatusQuery)) {
                                                    updateCartStatusStatement.setInt(1, productId);
                                                    int rowsUpdated = updateCartStatusStatement.executeUpdate();

                                                    if (rowsUpdated > 0) {
                                                        out.println("Coupon status updated in the cart for product ID: " + productId);

                                                        // Retrieve the actual price from the orders table
                                                        String getOrderPriceQuery = "SELECT price FROM orders WHERE email = ?";
                                                        try (PreparedStatement getOrderPriceStatement = connection.prepareStatement(getOrderPriceQuery)) {
                                                            getOrderPriceStatement.setString(1, email);

                                                            try (ResultSet orderResultSet = getOrderPriceStatement.executeQuery()) {
                                                                if (orderResultSet.next()) {
                                                                    // Actual price retrieved from the orders table
                                                                    double actualPrice = orderResultSet.getDouble("price");

                                                                    // Calculate the discounted price
                                                                    double discountedPrice = actualPrice - (actualPrice * (percentage / 100.0));

                                                                    // Use hidden fields to pass values to the client-side script
                                                                    out.println("<input type='hidden' id='actualPrice' value='" + actualPrice + "'/>");
                                                                    out.println("<input type='hidden' id='discountedPrice' value='" + discountedPrice + "'/>");

                                                                    // Insert the discounted price into the orders table
                                                                    String updateDiscountedPriceQuery = "UPDATE orders SET price = ? WHERE email = ?";
                                                                    try (PreparedStatement updateDiscountedPriceStatement = connection.prepareStatement(updateDiscountedPriceQuery)) {
                                                                        updateDiscountedPriceStatement.setDouble(1, discountedPrice);
                                                                        updateDiscountedPriceStatement.setString(2, email);
                                                                        int discountedPriceRowsUpdated = updateDiscountedPriceStatement.executeUpdate();

                                                                        if (discountedPriceRowsUpdated > 0) {
                                                                            out.println("Discounted price updated in the orders table for user: " + email);

                                                                            // SweetAlert script
                                                                            out.println("<script>");
                                                                            out.println("Swal.fire({");
                                                                            out.println("  icon: 'success',");
                                                                            out.println("  title: 'Success',");
                                                                            out.println("  html: 'Actual Price: ' + document.getElementById('actualPrice').value + '<br>Discounted Price: ' + document.getElementById('discountedPrice').value,");
                                                                            out.println("}).then(function() { window.location.href = 'customers-checkout.jsp?email=" + email + "&amount=" + amount + "'; });");
                                                                            out.println("</script>");
                                                                        } else {
                                                                            out.println("Error updating discounted price in the orders table for user: " + email);
                                                                        }
                                                                    }
                                                                } else {
                                                                    out.println("User not found or no order exists for the user.");
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        // Coupon not found in the cart for product ID or already applied
                                                        String successMessage = "Coupon not found in the cart for product ID: " + productId + " or already applied.";

                                                        out.println("<script>");
                                                        out.println("Swal.fire({");
                                                        out.println("  icon: 'success',");
                                                        out.println("  title: 'Success',");
                                                        out.println("  html: '" + successMessage + "',");
                                                        out.println("}).then(function() { window.location.href = 'customers-checkout.jsp?email=" + email + "&amount=" + amount + "'; });");
                                                        out.println("</script>");
                                                    }
                                                }
                                            }else {
                                                        // Coupon not found in the cart for product ID or already applied
                                                        String successMessage = "Coupon not found in the cart for product ID: " + productId + "";

                                                        out.println("<script>");
                                                        out.println("Swal.fire({");
                                                        out.println("  icon: 'success',");
                                                        out.println("  title: 'Success',");
                                                        out.println("  html: '" + successMessage + "',");
                                                        out.println("}).then(function() { window.location.href = 'customers-checkout.jsp?email=" + email + "&amount=" + amount + "'; });");
                                                        out.println("</script>");
                                                    }
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else {
                    // Coupon not found
                    out.println("Coupon not found.");
                }
            }
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        // Close the database connection in the finally block
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>
</body>
</html>
