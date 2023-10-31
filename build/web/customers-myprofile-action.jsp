<%-- 
    Document   : customers-myprofile-action
    Created on : 27-Sept-2023, 12:33:31 pm
    Author     : manikanta
--%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="Dbconn.dbconn"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.min.css">
    </head>
    <body>
      
     <%
try {
    // Database connection parameters
   


    String name = "";
    String phone = "";
    String email2 = "";
    String state = "";
    String address = "";
    String password = "";
    String serverFilePath = "";
    String fileName = "";
String email = "";

////out.println(email);
  String updateFields = "";

    // Check if the request contains multipart data
    if (ServletFileUpload.isMultipartContent(request)) {
        // Create a factory for disk-based file items
        DiskFileItemFactory factory = new DiskFileItemFactory();

        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);

        // Set the maximum allowed file size (in bytes)
        upload.setSizeMax(5600456); // Adjust the size limit as needed

        List<FileItem> items = upload.parseRequest(request);

        for (FileItem item : items) {
            if (!item.isFormField()) {
                // Handle file upload
                String originalFileName = new File(item.getName()).getName();
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS");
                String timeStamp = dateFormat.format(new Date());
                String truncatedTimeStamp = timeStamp.substring(8, 13); // Extract 5 digits from the timestamp
                String uniqueFileName = truncatedTimeStamp + "_" + originalFileName;
                serverFilePath = "C:\\Users\\manikanta\\OneDrive\\Documents\\NetBeansProjects\\D-LICIOUS\\build\\web\\img\\" + uniqueFileName;
                item.write(new File(serverFilePath));
                fileName = uniqueFileName;
            } else {
                // Handle form fields
                String fieldName = item.getFieldName();
                String fieldValue = item.getString();
                if ("name".equals(fieldName)) {
                    name = fieldValue;
                } else if ("email2".equals(fieldName)) {
                    email2 = fieldValue;
                } else if ("phone".equals(fieldName)) {
                    phone = fieldValue;
                } else if ("state".equals(fieldName)) {
                    state = fieldValue;
                }else if ("password".equals(fieldName)) {
                    password = fieldValue;
                }
                else if ("address".equals(fieldName)) {
                    address  = fieldValue;
                }
                 else if ("email".equals(fieldName)) {
                    email = fieldValue;
                }
            }
        }
out.println(name);
out.println(email2);
out.println(phone);
out.println(password);
out.println(address);
out.println(email);
        // Update data in the database
               try (   Connection connection = new Dbconn.dbconn().getConnection();) {
            //String updateFields = ""; // Initialize a string to hold the updated fields for the SQL query
            List<Object> updateValues = new ArrayList<>(); // List to hold the values for the prepared statement

            // Check if each field has been updated, and add it to the updateFields string
            if (!name.isEmpty()) {
                updateFields += "firstname=?, ";
                updateValues.add(name);
            }
          
            if (!email.isEmpty()) {
                updateFields += "email=?, ";
                updateValues.add(email);
            }
             if (!email2.isEmpty()) {
                updateFields += "email=?, ";
                updateValues.add(email2);
            }
            if (!phone.isEmpty()) {
                updateFields += "phone=?, ";
                updateValues.add(phone);
            }
            if (!state.isEmpty()) {
                updateFields += "state=?, ";
                updateValues.add(state);
            }
             if (!address.isEmpty()) {
                updateFields += "city=?, ";
                updateValues.add(address);
            }
             if (!password.isEmpty()) {
                updateFields += "password=?, ";
                updateValues.add(password);
            }

            // Check if an image was uploaded
            if (!fileName.isEmpty()) {
                updateFields += "image=?, imagename=?, ";
                updateValues.add(new FileInputStream(serverFilePath));
                updateValues.add(fileName);
            }

            // Remove the trailing comma and space from the updateFields string
            if (!updateFields.isEmpty()) {
                updateFields = updateFields.substring(0, updateFields.length() - 2);
            }

            // Construct the update query
            String sql = "UPDATE customers SET " + updateFields + " WHERE email=?";
            updateValues.add(email);

            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                // Set values for the prepared statement
                for (int i = 0; i < updateValues.size(); i++) {
                    statement.setObject(i + 1, updateValues.get(i));
                }

                // Execute the update statement
                int rowsAffected = statement.executeUpdate();

                if (rowsAffected > 0) {
                    // Update successful
                    
                     %>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>

<script>
    Swal.fire({
        icon: 'success', // Unicode code for the smiley emoji
        title: 'Success',
        text: 'Profile details and image updated successfully.'
    }).then(function() {
        window.location.href = 'customers-myprofile.jsp';
    });
</script>

<%
                    
                    
                    
                    
                    
                } else {
                   



                    
                     %>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>

<script>
    Swal.fire({
        icon: 'error', // Unicode code for the smiley emoji
        title: 'Failed',
        text: 'No matching record found for the provided email.'
    }).then(function() {
        window.location.href = 'customers-myprofile.jsp';
    });
</script>

<%
                }
            } catch (SQLException e) {
                e.printStackTrace();
                out.println("<p>Error executing database update: " + e.getMessage() + "</p>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<p>Error connecting to database: " + e.getMessage() + "</p>");
        }
    }
} catch (FileUploadException e) {
    e.printStackTrace();
    out.println("<p>Error parsing file upload: " + e.getMessage() + "</p>");
} catch (Exception e) {
    e.printStackTrace();
    out.println("<p>Unexpected error: " + e.getMessage() + "</p>");
}
%>
</body>
</html>
