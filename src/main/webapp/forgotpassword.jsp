<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Forgot password Form</title>
    <style>
        body {
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 20px;
            height: 300px;
            width: 350px;
        }
        .form {
            text-align: center;
        }
        label {
            font-size: 18px; /* Adjust the font size as needed */
        }
        input[type="text"] {
            font-size: 16px; /* Adjust the font size as needed */
            width: 300px;
            padding: 8px;
            margin: 8px 0;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            font-size: 18px; /* Adjust the font size as needed */
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="card">
        <div class="form">
            <form action="forgotpassword" method="post">
                <label><h2>Enter Email</h2></label>
                <input type="email" name="email">
                <br><br><br><br>
                <input type="submit" value="Check">
            </form>
            <c:if test="${not empty message}">
    <p>${message}</p>
</c:if>
        </div>
    </div>
</body>
</html>
