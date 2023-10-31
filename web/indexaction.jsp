<%--
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.io.IOUtils"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.util.Base64"%>
<%@page import="java.sql.*"%>



<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <%
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);

        if (isMultipart) {
            DiskFileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);

            List<FileItem> items = upload.parseRequest(request);

            List<String> base64Images = new ArrayList<>();

            for (FileItem item : items) {
                if (!item.isFormField()) {
                    InputStream imageStream = item.getInputStream();
                    byte[] imageBytes = IOUtils.toByteArray(imageStream);
                    String base64Image = Base64.getEncoder().encodeToString(imageBytes);
                    base64Images.add(base64Image);
                }
            }

            // Set the base64Images list as a request attribute to be accessed in the JSP.
            request.setAttribute("base64Images", base64Images);
        }
    %>

    <%
        List<String> base64Images = (List<String>) request.getAttribute("base64Images");

        if (base64Images != null) {
            for (String base64Image : base64Images) {
    %>
                <img src="data:image/png;base64, <%= base64Image %>" alt="Uploaded Image">
    <%
            }
        }
    %>
    <%
        


        %>
    
    
</body>
</html>


--%>


<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.io.IOUtils"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.util.Base64"%>
<%@page import="java.sql.*"%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <%
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);

        if (isMultipart) {
            DiskFileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);

            List<FileItem> items = upload.parseRequest(request);

            List<String> base64Images = new ArrayList<>();

            for (FileItem item : items) {
                if (!item.isFormField()) {
                    InputStream imageStream = item.getInputStream();
                    byte[] imageBytes = IOUtils.toByteArray(imageStream);
                    String base64Image = Base64.getEncoder().encodeToString(imageBytes);
                    base64Images.add(base64Image);
                }
            }

            // Set the base64Images list as a request attribute to be accessed in the JSP.
            request.setAttribute("base64Images", base64Images);
        }
    %>

    <%
        List<String> base64Images = (List<String>) request.getAttribute("base64Images");

        if (base64Images != null) {
            for (String base64Image : base64Images) {
    %>
                <img src="data:image/png;base64, <%= base64Image %>" alt="Uploaded Image">
    <%
            }
        }
    %>
  <%


    try {
    
     Connection connection = Dbconn.dbconn.getConnection();


        // Prepare a SQL statement to insert images into the database
        String sql = "INSERT INTO sample (image1, image2, image3, image4, image5) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement statement = connection.prepareStatement(sql);

        // Set BLOB values for each image column
        for (int i = 0; i < base64Images.size(); i++) {
            byte[] imageBytes = Base64.getDecoder().decode(base64Images.get(i));
            statement.setBytes(i + 1, imageBytes);
        }

        // Execute the SQL statement to insert data into the database
        statement.executeUpdate();

        // Close the database resources
        statement.close();
        connection.close();
    } catch (Exception e) {
        e.printStackTrace();
        // Handle exceptions as needed
    }
%>
    
    
</body>
</html>




