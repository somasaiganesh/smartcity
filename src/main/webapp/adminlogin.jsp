<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>

<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        h3 {
            text-align: center;
            margin-top: 20px;
            color: red;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            margin: 20px 0;
        }

        td {
            padding: 10px;
        }

        label {
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .button {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <span class="blink">
        <h3>${message}</h3>
    </span>

    <h3 align="center"><u>Admin Login</u></h3>

    <form method="post" action="checkadminlogin">
        <table align="center">
            <tr>
                <td><label>Username</label></td>
                <td><input type="text" name="uname" required/></td>
            </tr>

            <tr>
                <td></td>
            </tr>

            <tr>
                <td><label>Password</label></td>
                <td><input type="password" name="pwd" required/></td>
            </tr>

            <tr>
                <td></td>
            </tr>

            <tr>
                <td></td>
            </tr>

            <tr align="center">
                <td colspan="2"><input type="submit" value="Login" class="button"></td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
