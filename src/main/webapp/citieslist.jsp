<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Urban Compass Cities</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1" />
    <link rel="stylesheet" href="styles.css" />
    <style>
        .header {
            text-align: center;
            font-size: 24px;
            margin: 10px 0 0;
            color: #333;
        }

        .back-button {
            text-align: center;
            margin: 20px 0 20px;
        }

        .back-button a {
            text-decoration: none;
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
        }

        :root {
            --card-height: 500px;
            --card-width: calc(var(--card-height) / 1.5);
        }

        .message-container {
            text-align: center;
            margin-bottom: 0px;
            font-size: 24px;
            color: #333;
        }

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            background: white;
        }

        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .card {
            max-width: var(--card-width);
            width: 100%;
            height: var(--card-height);
            position: relative;
            overflow: hidden;
            margin: 25px auto;
        }

        .wrapper {
            transition: all 0.5s;
            position: absolute;
            width: 100%;
            height: 100%;
            top: 100%;
            left: 0;
            z-index: -1;
            overflow: hidden;
        }

        .cover-image {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .card:hover .wrapper {
            transform: perspective(900px) translateY(-5%) rotateX(25deg) translateZ(0);
            box-shadow: 2px 35px 32px -8px rgba(0, 0, 0, 0.75);
            -webkit-box-shadow: 2px 35px 32px -8px rgba(0, 0, 0, 0.75);
            -moz-box-shadow: 2px 35px 32px -8px rgba(0, 0, 0, 0.75);
        }

        .wrapper::before,
        .wrapper::after {
            content: "";
            opacity: 0;
            width: 100%;
            height: 200px;
            transition: all 0.5s;
            position: absolute;
            left: 0;
        }

        .card:hover .wrapper::before,
        .wrapper::after {
            opacity: 1;
        }

        .card:hover .wrapper::after {
            height: 100px;
        }

        .title {
            width: 100%;
            transition: transform 0.5s;
        }

        .card:hover .title {
            transform: translate3d(0%, -50px, 100px);
        }

        .character {
            max-width: 100%;
            max-height: 140%;
            width: 100%;
            opacity: 0;
            transition: all 0.5s;
            position: absolute;
            z-index: -1;
        }

        .character.reduce-height {
            max-height: 70%;
        }

        .card:hover .character {
            opacity: 1;
            transform: translate3d(0, 30%, 100px);
        }

        .overlay-text,
        .overlay-texte {
            position: absolute;
            top: 10px;
            left: 10px;
            color: white;
            padding: 10px;
            font-size: 24px;
            text-align: left;
            opacity: 1;
            transition: opacity 0.3s;
            font-family: "Pacifico", cursive;
        }

        .overlay-texte {
            left: 20px;
            font-size: 26px;
        }

        @media (max-width: 768px) {
            .card {
                max-width: 90%;
            }

            .card-container {
                flex-direction: column;
            }

            .overlay-text,
            .overlay-texte {
                font-size: 16px;
            }

            .card .wrapper {
                padding: 0 8px;
            }

            .card:hover .wrapper {
                transform: none;
            }

            .card:hover .title,
            .card:hover .character {
                transform: none;
            }
        }
    </style>
</head>

<body>

    <div class="back-button">
        <a href="home.jsp">Return Back</a>
    </div>

    <div class="header">
        𝙳𝚒𝚜𝚌𝚘𝚟𝚎𝚛 𝚢𝚘𝚞𝚛 𝚙𝚛𝚎𝚏𝚎𝚛𝚛𝚎𝚍 𝚌𝚒𝚝𝚢 𝚋𝚢 𝚜𝚎𝚕𝚎𝚌𝚝𝚒𝚗𝚐 𝚏𝚛𝚘𝚖 𝚝𝚑𝚎 𝚌𝚑𝚘𝚒𝚌𝚎𝚜 𝚋𝚎𝚕𝚘𝚠.
    </div>

    <div class="card-container">
        <c:forEach items="${clist}" var="c">
            <a href="home?city=${c.city}" class="card">
                <div class="wrapper">
                    <div class="overlay-text"><c:out value="${c.citynamestyle}" /></div>
                    <img src="displaycityimage1?id=${c.id}" class="cover-image" />
                </div>
                <img src="displaycityimage2?id=${c.id}" class="character" />
               
            </a>
        </c:forEach>
    </div>
</body>

</html>
