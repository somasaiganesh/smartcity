<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login Required</title>

    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5;
            text-align: center;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        div {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            padding: 40px;
            max-width: 400px;
            width: 100%;
            text-align: left;
            margin: 20px;
        }

        p {
            font-size: 20px;
            line-height: 1.6;
            color: #333;
            margin-bottom: 30px;
        }

        a {
            text-decoration: none;
            margin-right: 20px;
        }

        button {
            background-color: #4caf50;
            color: #ffffff;
            padding: 12px 24px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #45a049;
        }

        /* Responsive styles */
        @media only screen and (max-width: 600px) {
            div {
                padding: 20px;
            }

            button,
            .return-button {
                width: 100%;
                margin-bottom: 1px; /* Add space between buttons for smaller screens */
            }

            a {
                display: block; /* Ensure each link is on a new line for smaller screens */
                text-decoration: none;
                margin-top: 20px;
            }
        }

        @media only screen and (min-width: 601px) {
            button,
            .return-button {
                width: auto;
                margin-right: 10px; /* Add space between buttons for larger screens */
            }

            /* New rule for larger screens to keep buttons side by side */
            a {
                display: inline-block;
            }
        }
    </style>
</head>
<body>

    <div>
        <p>To access <b>Booking Services</b> / <b>My Bookings</b> / <b>Profile</b> / <b>Participate in a Quiz</b> please Login. If you don't have an account yet, feel free to Register.</p>
        
        <a>
            <button onclick="goBack()">Return</button>
        </a>
        
        <a href="login">
            <button>Login</button>
        </a>
        <a href="registration">
            <button>Register</button>
        </a>
    </div>

    <script>
        function goBack() {
            window.history.back();
        }
    </script>

</body>
</html>
