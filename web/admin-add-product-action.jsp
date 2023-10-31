<%--

<%@ page import="java.io.*,java.sql.*,java.util.*, org.apache.commons.fileupload.*, org.apache.commons.fileupload.disk.*, org.apache.commons.fileupload.servlet.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Item</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
</head>
<body>
<%
    // Check if the request is multipart/form-data
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);

    if (isMultipart) {
        // Create a factory for disk-based file items
        DiskFileItemFactory factory = new DiskFileItemFactory();

        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);

        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            // Parse the multipart request
            List<FileItem> items = upload.parseRequest(request);

            String category = null;
            String product = null;
            String brand = null;
            String model = null;
            String dimensions = null;
            String display = null;
            String wirelesscharging = null;
            String processor = null;
            String ram = null;
            String storage = null;
            String touchscreen = null;
            String wifi = null;
            String gps = null;
            String usb = null;
            String os = null;
            String headphone = null;
            String battery = null;
            String support5G = null;
            double price = 0.0;
            double discount = 0.0;
            String description = null;
            InputStream imageStream = null;

            // Create a prepared statement
            String sql = "INSERT INTO products (product, brand, model, dimensions, wirelesscharging, processor, ram, storage, touchscreen, wifi, gps, usb, os, headphone, battery, 5gsupport, category, description, price, discount, image,display) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            connection = Dbconn.dbconn.getConnection(); // Obtain a database connection
            preparedStatement = connection.prepareStatement(sql);

            for (FileItem item : items) {
                if (item.isFormField()) {
                    // Process form fields
                    if ("product".equals(item.getFieldName())) {
                        product = item.getString();
                    } else if ("brand".equals(item.getFieldName())) {
                        brand = item.getString();
                    } else if ("model".equals(item.getFieldName())) {
                        model = item.getString();
                    } else if ("dimensions".equals(item.getFieldName())) {
                        dimensions = item.getString();
                    } else if ("wirelesscharging".equals(item.getFieldName())) {
                        wirelesscharging = item.getString();
                    } else if ("processor".equals(item.getFieldName())) {
                        processor = item.getString();
                    } else if ("ram".equals(item.getFieldName())) {
                        ram = item.getString();
                    } else if ("storage".equals(item.getFieldName())) {
                        storage = item.getString();
                    } else if ("touchscreen".equals(item.getFieldName())) {
                        touchscreen = item.getString();
                    } else if ("wifi".equals(item.getFieldName())) {
                        wifi = item.getString();
                    } else if ("gps".equals(item.getFieldName())) {
                        gps = item.getString();
                    } else if ("usb".equals(item.getFieldName())) {
                        usb = item.getString();
                    } else if ("os".equals(item.getFieldName())) {
                        os = item.getString();
                    } else if ("headphone".equals(item.getFieldName())) {
                        headphone = item.getString();
                    } else if ("battery".equals(item.getFieldName())) {
                        battery = item.getString();
                    } else if ("support5G".equals(item.getFieldName())) {
                        support5G = item.getString();
                    } else if ("category".equals(item.getFieldName())) {
                        category = item.getString();
                    } else if ("price".equals(item.getFieldName())) {
                        price = Double.parseDouble(item.getString());
                    } else if ("discount".equals(item.getFieldName())) {
                        discount = Double.parseDouble(item.getString());
                    } else if ("description".equals(item.getFieldName())) {
                        description = item.getString();
                    }else if ("display".equals(item.getFieldName())) {
                        display = item.getString();
                    }
                } else {
                    // Process the file field (item image)
                    imageStream = item.getInputStream();
                }
            }

            // Set values on the prepared statement
            preparedStatement.setString(1, product);
            preparedStatement.setString(2, brand);
            preparedStatement.setString(3, model);
            preparedStatement.setString(4, dimensions);
            preparedStatement.setString(5, wirelesscharging);
            preparedStatement.setString(6, processor);
            preparedStatement.setString(7, ram);
            preparedStatement.setString(8, storage);
            preparedStatement.setString(9, touchscreen);
            preparedStatement.setString(10, wifi);
            preparedStatement.setString(11, gps);
            preparedStatement.setString(12, usb);
            preparedStatement.setString(13, os);
            preparedStatement.setString(14, headphone);
            preparedStatement.setString(15, battery);
            preparedStatement.setString(16, support5G);
            preparedStatement.setString(17, category);
            preparedStatement.setString(18, description);
            preparedStatement.setDouble(19, price);
            preparedStatement.setDouble(20, discount);

            if (imageStream != null) {
                // Set the image column with the input stream
                preparedStatement.setBlob(21, imageStream);
            }
            preparedStatement.setString(22, display);

            // Execute the SQL statement to insert data
            int rowsAffected = preparedStatement.executeUpdate();

            // Rest of your code for showing success/error message
            if (rowsAffected > 0) {
                // Item added successfully
                String successMessage = "Added successfully.";
                out.println("<script>");
                out.println("Swal.fire({");
                out.println("  icon: 'success',");
                out.println("  title: 'Success',");
                out.println("  text: '" + successMessage + "',");
                out.println("}).then(function() { window.location.href = 'admin-view-product.jsp'; });");
                out.println("</script>");
            } else {
                // Failed to add the item
                String errorMessage = "No Item Added.";
                out.println("<script>");
                out.println("Swal.fire({");
                out.println("  icon: 'error',");
                out.println("  title: 'Error',");
                out.println("  text: '" + errorMessage + "',");
                out.println("}).then(function() { window.location.href = 'admin-add-product.jsp'; });");
                out.println("</script>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("Error: " + e.getMessage());
        } finally {
            // Close database resources
            if (preparedStatement != null) {
                preparedStatement.close();
            }
            if (connection != null) {
                connection.close();
            }
        }
    } else {
        out.println("Invalid request.");
    }
%>
</body>
</html>


--%>



<%@page import="org.apache.commons.io.IOUtils"%>
<%@ page import="java.io.*,java.sql.*,java.util.*, org.apache.commons.fileupload.*, org.apache.commons.fileupload.disk.*, org.apache.commons.fileupload.servlet.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Item</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
</head>
<body>
<%
    // Check if the request is multipart/form-data
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);

    if (isMultipart) {
        // Create a factory for disk-based file items
        DiskFileItemFactory factory = new DiskFileItemFactory();

        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);

        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            // Parse the multipart request
            List<FileItem> items = upload.parseRequest(request);
            
            List<String> base64Images = new ArrayList<>();

            String category = null;
            String product = null;
            String brand = null;
            String model = null;
            String dimensions = null;
            String display = null;
            String wirelesscharging = null;
            String processor = null;
            String ram = null;
            String storage = null;
            String touchscreen = null;
            String wifi = null;
            String gps = null;
            String usb = null;
            String os = null;
            String headphone = null;
            String battery = null;
            String support5G = null;
            double price = 0.0;
            double discount = 0.0;
            String description = null;
            InputStream imageStream = null;

            // Create a prepared statement
          

            connection = Dbconn.dbconn.getConnection(); // Obtain a database connection
            
              String sql = "INSERT INTO products (product, brand, model, dimensions, wirelesscharging,         processor, ram, storage, touchscreen, wifi,              gps, usb, os, headphone, battery,                5gsupport, category, description, price, discount,                image1,image2,image3,image4,image5             ,display) VALUES (?, ?, ?, ?, ?,     ?, ?, ?, ?, ?,       ?, ?, ?, ?, ?,      ?, ?, ?, ?, ?,      ?, ?, ?, ?, ?,       ?)";
            preparedStatement = connection.prepareStatement(sql);

            for (FileItem item : items) {
                if (item.isFormField()) {
                    // Process form fields
                    if ("product".equals(item.getFieldName())) {
                        product = item.getString();
                    } else if ("brand".equals(item.getFieldName())) {
                        brand = item.getString();
                    } else if ("model".equals(item.getFieldName())) {
                        model = item.getString();
                    } else if ("dimensions".equals(item.getFieldName())) {
                        dimensions = item.getString();
                    } else if ("wirelesscharging".equals(item.getFieldName())) {
                        wirelesscharging = item.getString();
                    } else if ("processor".equals(item.getFieldName())) {
                        processor = item.getString();
                    } else if ("ram".equals(item.getFieldName())) {
                        ram = item.getString();
                    } else if ("storage".equals(item.getFieldName())) {
                        storage = item.getString();
                    } else if ("touchscreen".equals(item.getFieldName())) {
                        touchscreen = item.getString();
                    } else if ("wifi".equals(item.getFieldName())) {
                        wifi = item.getString();
                    } else if ("gps".equals(item.getFieldName())) {
                        gps = item.getString();
                    } else if ("usb".equals(item.getFieldName())) {
                        usb = item.getString();
                    } else if ("os".equals(item.getFieldName())) {
                        os = item.getString();
                    } else if ("headphone".equals(item.getFieldName())) {
                        headphone = item.getString();
                    } else if ("battery".equals(item.getFieldName())) {
                        battery = item.getString();
                    } else if ("support5G".equals(item.getFieldName())) {
                        support5G = item.getString();
                    } else if ("category".equals(item.getFieldName())) {
                        category = item.getString();
                    } else if ("price".equals(item.getFieldName())) {
                        price = Double.parseDouble(item.getString());
                    } else if ("discount".equals(item.getFieldName())) {
                        discount = Double.parseDouble(item.getString());
                    } else if ("description".equals(item.getFieldName())) {
                        description = item.getString();
                    }else if ("display".equals(item.getFieldName())) {
                        display = item.getString();
                    }
                } else {
                    // Process the file field (item image)
                    imageStream = item.getInputStream();
                    byte[] imageBytes = IOUtils.toByteArray(imageStream);
                    String base64Image = Base64.getEncoder().encodeToString(imageBytes);
                    base64Images.add(base64Image);

                }
            }
            request.setAttribute("base64Images", base64Images);
            
            
            
            
            
            
            
            // Set values on the prepared statement
            preparedStatement.setString(1, product);
            preparedStatement.setString(2, brand);
            preparedStatement.setString(3, model);
            preparedStatement.setString(4, dimensions);
            preparedStatement.setString(5, wirelesscharging);
            preparedStatement.setString(6, processor);
            preparedStatement.setString(7, ram);
            preparedStatement.setString(8, storage);
            preparedStatement.setString(9, touchscreen);
            preparedStatement.setString(10, wifi);
            preparedStatement.setString(11, gps);
            preparedStatement.setString(12, usb);
            preparedStatement.setString(13, os);
            preparedStatement.setString(14, headphone);
            preparedStatement.setString(15, battery);
            preparedStatement.setString(16, support5G);
            preparedStatement.setString(17, category);
            preparedStatement.setString(18, description);
            preparedStatement.setDouble(19, price);
            preparedStatement.setDouble(20, discount);
           

        for (int i = 0; i < base64Images.size(); i++) {
            byte[] imageBytes = Base64.getDecoder().decode(base64Images.get(i));
            preparedStatement.setBytes(21 + i, imageBytes);
        }



            preparedStatement.setString(26, display);

          

            // Execute the SQL statement to insert data
            int rowsAffected = preparedStatement.executeUpdate();

            // Rest of your code for showing success/error message
            if (rowsAffected > 0) {
                // Item added successfully
                String successMessage = "Added successfully.";
                out.println("<script>");
                out.println("Swal.fire({");
                out.println("  icon: 'success',");
                out.println("  title: 'Success',");
                out.println("  text: '" + successMessage + "',");
                out.println("}).then(function() { window.location.href = 'admin-view-product.jsp'; });");
                out.println("</script>");
            } else {
                // Failed to add the item
                String errorMessage = "No Item Added.";
                out.println("<script>");
                out.println("Swal.fire({");
                out.println("  icon: 'error',");
                out.println("  title: 'Error',");
                out.println("  text: '" + errorMessage + "',");
                out.println("}).then(function() { window.location.href = 'admin-add-product.jsp'; });");
                out.println("</script>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("Error: " + e.getMessage());
        } 
        
        
        
        finally {
            // Close database resources
            if (preparedStatement != null) {
                preparedStatement.close();
            }
            if (connection != null) {
                connection.close();
            }
        }
        
        
        
        
        
    } else {
        out.println("Invalid request.");
    }
%>
</body>
</html>