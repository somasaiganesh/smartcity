<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Form Submission</title>
  <link rel="stylesheet" type="text/css" href="styles.css">
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }

    .card {
      max-width: 400px;
      background: linear-gradient(135deg, #3498db, #9b59b6);
      border-radius: 10px;
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
      text-align: center;
      padding: 20px;
      animation: fadeIn 1s ease-in-out;
    }

    h1 {
      color: #fff;
      font-size: 24px;
      margin: 0;
    }

    p {
      color: #fff;
      font-size: 16px;
      margin-top: 10px;
    }

    @keyframes fadeIn {
      0% { opacity: 0; transform: scale(0.8); }
      100% { opacity: 1; transform: scale(1); }
    }
  </style>
</head>
<body>
  <div class="card">
    <h1>Thank You!</h1>
    <p>Thank you for your submission. We will get back to you shortly.</p>
  </div>
</body>
</html>
