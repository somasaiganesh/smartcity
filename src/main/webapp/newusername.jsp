<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Password Reset Form</title>
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
            height: 350px;
            width: 350px;
        }
        .form {
            text-align: left; /* Align labels and inputs to the left */
        }
        label {
            font-size: 18px; /* Adjust the font size as needed */
            display: block; /* Each label on a new line */
            margin-bottom: 8px; /* Add some spacing between labels */
        }
        input[type="text"], input[type="password"] {
            font-size: 16px; /* Adjust the font size as needed */
            width: 300px; /* Make inputs full width */
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
        p {
        text-align: center;
        color: red;
        margin-top: 10px;
        font-size:20px;
    }
    </style>
   
</head>
<body>

 <div class="card">
 
        <div class="form">
        <c:if test="${not empty message}">
    <p>${message}</p>
</c:if>
    <form action="setpassword" method="post" onsubmit="return validateForm()">
        <label for="email">email</label>
            <input type="email" name="email" id="email" value="${sessionScope.userEmail}" readonly style="width: 312px; height:30px">
        <br>
        <label for="newpassword">Enter New Password</label>
        <input type="password" id="newpassword" name="newpassword">
        <br>
        <label for="confirmPassword">Confirm New Password</label>
        <input type="password" id="confirmPassword" name="confirmPassword">
        <br> <br>
        <input type="submit" value="Submit">
    </form>
    
    
    </div>
    </div>
     <script>
        function validateForm() {
            var newPassword = document.getElementById("newpassword").value;
            var confirmPassword = document.getElementById("confirmPassword").value;

            if (newPassword !== confirmPassword) {
                alert("Passwords do not match");
                return false; // Prevent form submission
            }
            return true; // Allow form submission
        }
    </script>
</body>
</html>
