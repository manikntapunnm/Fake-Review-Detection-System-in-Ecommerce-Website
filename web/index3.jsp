<%-- 
    Document   : index
    Created on : 28-Sept-2023, 3:19:16 pm
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="indexaction.jsp" method="post" enctype="multipart/form-data" id="formAccountSettings">
            
            <%
     
     int numberOfFileInputs = 5; // Set the number of file inputs
            for (int i = 1; i <= numberOfFileInputs; i++) {
        %>
                <!-- File Input <%= i %> -->
                <div class="button-wrapper">
                    <label for="upload<%= i %>" class="btn btn-primary me-2 mb-4" tabindex="0">
                        <span class="d-none d-sm-block">Upload Product Photo <%= i %></span>
                        <i class="bx bx-upload d-block d-sm-none"></i>
                        <input type="file" name="image<%= i %>" id="upload<%= i %>" class="account-file-input" >
                    </label>
                </div>
        <%
            }
        %>
 <button type="submit" class="btn btn-primary me-2">Add Item</button>
        </form>
    </body>
</html>
