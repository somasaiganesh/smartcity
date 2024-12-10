<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Support Request Submitted</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('./images/bgsm1.jpg.jpg'); /* Add your background image path */
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 40px 50px;
            border-radius: 8px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
        }

        h3 {
            font-size: 24px;
            color: #28a745;
            margin-bottom: 20px;
        }

        p {
            font-size: 16px;
            color: #555;
            margin-bottom: 30px;
            line-height: 1.6;
        }

        .success-icon {
            font-size: 50px;
            color: #28a745;
            margin-bottom: 20px;
        }

        .button {
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            text-decoration: none;
            font-size: 16px;
            cursor: pointer;
        }

        .button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="success-icon">✔</div>
        <h3>Thank You!</h3>
        <p>Your support request has been successfully submitted. We will get back to you shortly.</p>
        <a href="home.jsp" class="button">Go To The Site</a>
         <a href="index.jsp" class="button">Return to Home</a>
        
    </div>
</body>
</html>
