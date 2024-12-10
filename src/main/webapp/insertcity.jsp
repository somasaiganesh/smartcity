<%@ page import="java.sql.*, java.io.*, javax.servlet.http.Part" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Insert City</title>
</head>
<body>
<%
    // Retrieve form parameters
    String cityName = request.getParameter("cityname");
    String cityNameStyle = request.getParameter("citynamestyle");

    // Retrieve the uploaded files
    Part cityImage1 = request.getPart("cityimage1");
    Part cityImage2 = request.getPart("cityimage2");

    // Check if files are null
    if (cityImage1 == null || cityImage2 == null) {
        out.println("<h3 align='center' style='color:red;'>Error: One or more files not uploaded.</h3>");
        return;
    }

    // Specify the folder to save the uploaded files
    String savePath = application.getRealPath("/") + "uploads";
    File fileSaveDir = new File(savePath);
    if (!fileSaveDir.exists()) {
        fileSaveDir.mkdir();
    }

    try {
        // Save the uploaded files
        String fileName1 = cityImage1.getSubmittedFileName();
        String fileName2 = cityImage2.getSubmittedFileName();
        
        if (fileName1 != null && !fileName1.isEmpty()) {
            cityImage1.write(savePath + File.separator + fileName1);
        }
        if (fileName2 != null && !fileName2.isEmpty()) {
            cityImage2.write(savePath + File.separator + fileName2);
        }

        // Database connection details
        String url = "jdbc:mysql://localhost:3306/yourdbname";  // Replace with your database name
        String user = "yourusername";  // Replace with your database username
        String password = "yourpassword";  // Replace with your database password

        Connection conn = null;
        PreparedStatement pst = null;

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish a connection
            conn = DriverManager.getConnection(url, user, password);

            // Insert city details into the database
            String sql = "INSERT INTO cities (name, name_style, image1, image2) VALUES (?, ?, ?, ?)";
            pst = conn.prepareStatement(sql);
            pst.setString(1, cityName);
            pst.setString(2, cityNameStyle);
            pst.setString(3, fileName1);
            pst.setString(4, fileName2);
            pst.executeUpdate();

            // Display success message
            out.println("<h3 align='center' style='color:green;'>City added successfully!</h3>");

        } catch (SQLException e) {
            out.println("<h3 align='center' style='color:red;'>SQL Error: " + e.getMessage() + "</h3>");
        } catch (ClassNotFoundException e) {
            out.println("<h3 align='center' style='color:red;'>Driver Error: " + e.getMessage() + "</h3>");
        } finally {
            if (pst != null) pst.close();
            if (conn != null) conn.close();
        }
    } catch (IOException e) {
        out.println("<h3 align='center' style='color:red;'>File Error: " + e.getMessage() + "</h3>");
    }
%>
</body>
</html>
