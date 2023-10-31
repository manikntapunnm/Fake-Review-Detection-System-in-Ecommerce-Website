<%-- 
    Document   : customer-register-action
    Created on : 26-Sept-2023, 6:01:48 pm
    Author     : manikanta
--%>

<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.sql.*"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="Dbconn.dbconn"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
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
                String userid = "";
                String password = "";
                String firstname = "";
                String lastname = "";
                String email = "";
                String phone = "";
                String gender = "";
                String age = "";
                String city = "";
                String door = "";
                String state = "";
                String pincode = "";

                String serverFilePath = "";
                String fileName = "";

                boolean emailExists = false;

                if (ServletFileUpload.isMultipartContent(request)) {
                    DiskFileItemFactory factory = new DiskFileItemFactory();
                    ServletFileUpload upload = new ServletFileUpload(factory);
                    upload.setSizeMax(5600456); // Adjust the size limit as needed

                    List<FileItem> items = upload.parseRequest(request);

                    for (FileItem item : items) {
                        if (!item.isFormField()) {
                            String originalFileName = new File(item.getName()).getName();
                            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS");
                            String timeStamp = dateFormat.format(new Date());
                            String truncatedTimeStamp = timeStamp.substring(8, 13);
                            String uniqueFileName = truncatedTimeStamp + "_" + originalFileName;
                            serverFilePath = "C:\\Users\\manikanta\\OneDrive\\Documents\\NetBeansProjects\\Fake Review\\web\\img\\" + uniqueFileName;
                            item.write(new File(serverFilePath));
                            fileName = uniqueFileName;
                            out.println(fileName);

                        } else {
                            String fieldName = item.getFieldName();
                            String fieldValue = item.getString();
                            if ("userid".equals(fieldName)) {
                                userid = fieldValue;
                            } else if ("password".equals(fieldName)) {
                                password = fieldValue;
                            } else if ("firstname".equals(fieldName)) {
                                firstname = fieldValue;
                            } else if ("lastname".equals(fieldName)) {
                                lastname = fieldValue;
                            } else if ("email".equals(fieldName)) {
                                email = fieldValue;
                            } else if ("phone".equals(fieldName)) {
                                phone = fieldValue;
                            } else if ("gender".equals(fieldName)) {
                                gender = fieldValue;
                            } else if ("age".equals(fieldName)) {
                                age = fieldValue;
                            } else if ("city".equals(fieldName)) {
                                city = fieldValue;
                            } else if ("door".equals(fieldName)) {
                                door = fieldValue;
                            } else if ("state".equals(fieldName)) {
                                state = fieldValue;
                            } else if ("pincode".equals(fieldName)) {
                                pincode = fieldValue; // Corrected variable name to 'pincode'
                            }
                        }
                    }
                    out.println(userid);
                    out.println(password);
                    out.println(firstname);
                    out.println(lastname);
                    out.println(email);
                    out.println(phone);
                    out.println(gender);
                    out.println(age);
                    out.println(city);
                    out.println(door);
                    out.println(state);
                    out.println(pincode);

                    // Check if email already exists
                    try (Connection connection = new Dbconn.dbconn().getConnection(); PreparedStatement checkEmailStatement = connection.prepareStatement("SELECT email FROM customers WHERE email = ?");) {
                        checkEmailStatement.setString(1, email);
                        ResultSet resultSet = checkEmailStatement.executeQuery();
                        if (resultSet.next()) {
                            // Email already exists, set the flag to true
                            emailExists = true;
                        }
                    }

                    if (!emailExists) {
                        // Process registration
                        //String sql = "INSERT INTO customers(userid,password,firstname,lastname, email,phone,gender,age,city,door,state,pincode, image, imagename) VALUES (?,?,?, ?, ?, ?, ?, ?, ?,?,?,?,?,?)";
                        String sql = "INSERT INTO customers(userid, password, firstname, lastname, email, phone, gender, age, city, door, state, pincode, image, imagename) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                        try (Connection connection = new Dbconn.dbconn().getConnection(); PreparedStatement statement = connection.prepareStatement(sql)) {

                            statement.setString(1, userid);
                            statement.setString(2, password);
                            statement.setString(3, firstname);
                            statement.setString(4, lastname);
                            statement.setString(5, email);
                            statement.setString(6, phone);
                            statement.setString(7, gender);
                            statement.setString(8, age);
                            statement.setString(9, city);
                            statement.setString(10, door);
                            statement.setString(11, state);
                            statement.setString(12, pincode);

                            FileInputStream input = new FileInputStream(serverFilePath);
                            statement.setBinaryStream(13, input);
                            statement.setString(14, fileName);

                            int rowsInserted = statement.executeUpdate();

                            if (rowsInserted > 0) {
                                final String senderEmail = "projects@codebook.in";
                                final String senderPassword = "frwqvhawrnsxetyk";

                                Properties props = new Properties();
                                props.put("mail.smtp.host", "smtp.gmail.com");
                                props.put("mail.smtp.port", "587");
                                props.put("mail.smtp.auth", "true");
                                props.put("mail.smtp.starttls.enable", "true");

                                Session esession = Session.getInstance(props, new javax.mail.Authenticator() {
                                    protected PasswordAuthentication getPasswordAuthentication() {
                                        return new PasswordAuthentication(senderEmail, senderPassword);
                                    }
                                });

                                MimeMessage message = new MimeMessage(esession);
                                message.setFrom(new InternetAddress(senderEmail));
                                message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
                                message.setSubject("Registration Successful");
                                message.setText("Dear " + firstname + ",\n\nThank you for registering. Your account details are:\nUser ID: " + userid + "\nPassword: " + password);

                                Transport.send(message);

                                // Display success message using SweetAlert
                                String successMessage = "Registration Successful. An email has been sent to your registered email address.";
        %>

        <!-- Include SweetAlert2 JavaScript via CDN -->
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
            Swal.fire({
                icon: 'success',
                title: 'Success',
                text: '<%= successMessage%>'
            }).then(function () {
                window.location.href = 'main-customers-login.jsp';
            });
        </script>

        <%

        //                response.sendRedirect("customer-login.jsp");
        } else {

            // response.sendRedirect("main-customer-register.jsp");
            String failureMessage = "Registration Failed. Please try again.";


        %>

        <!-- Include SweetAlert2 JavaScript via CDN -->
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>

        <script>
            Swal.fire({
                icon: 'error',
                title: 'Error',
                text: '<%= failureMessage%>'
            }).then(function () {
                window.location.href = 'main-customer-register.jsp';
            });
        </script>

        <%
                            }
                        } catch (Exception e) {
                            out.print(e);
                        }
                    } else {
                        // Email already exists, redirect to login page or show an error message
                        session.setAttribute("msg2", "Email already exists. Please log in.");
                        response.sendRedirect("main-customers-login.jsp");
                    }
                }
            } catch (Exception e) {
                out.print(e);
            }
        %>

    </body>
</html>
