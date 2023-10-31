<%-- 
    Document   : payment-process
    Created on : 13-Oct-2023, 5:32:54 pm
    Author     : manikanta
--%>

<%@ page import="Dbconn.dbconn"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>

<%
    Connection conn = null;
    PreparedStatement pstmt = null;
    PreparedStatement pstmtOrders = null;
PreparedStatement pstmtCart = null;

    try {
        // Get the parameters from the request
        String paymentId = request.getParameter("paymentid");
        String orderid = request.getParameter("orderid");
        
        
      //  out.println(paymentId);
       // out.println(orderid);
        
        

       
       
          conn = dbconn.getConnection();
       String sql = "UPDATE orders SET payment = 'Paid', payment_id = ? WHERE order_id = ?";
pstmt = conn.prepareStatement(sql);
pstmt.setString(1, paymentId);
pstmt.setString(2, orderid);
  
String sqlCart = "UPDATE cart SET checkstatus = 'Checked', payment = 'Paid' WHERE order_id = ?";
pstmtCart = conn.prepareStatement(sqlCart);
pstmtCart.setString(1, orderid);  // Corrected to use orderId
pstmtCart.executeUpdate();


   
int rowsUpdated = pstmt.executeUpdate();

if (rowsUpdated > 0) {
            out.println("done");
            session.setAttribute("paymentId", paymentId);
        } else {
            out.println("Error in database operation.");
        }
    } catch (SQLException e) {
        out.println("SQLException: " + e.getMessage());
    } finally {
        try {
            // Close resources in the finally block
            if (pstmt != null) {
                pstmt.close();
            }
            if (conn != null && !conn.isClosed()) {
                conn.close();
            }
        } catch (SQLException e) {
            out.println("SQLException: " + e.getMessage());
        }
    }
%>
