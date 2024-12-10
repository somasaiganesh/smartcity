<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en">
<head>
<title>Companies and Jobs</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style>
body {
	margin: 0;
	font-family: Arial, sans-serif;
	background-color: #f5f5f5;
}

@import
	url("https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Montserrat:wght@700&display=swap")
	;

:root {
	/* Colors */
	--brand-color: hsl(46, 100%, 50%);
	--black: hsl(0, 0%, 0%);
	--white: hsl(0, 0%, 100%);
	/* Fonts */
	--font-title: "Montserrat", sans-serif;
	--font-text: "Lato", sans-serif;
}

/* RESET */

/* Box sizing rules */
*, *::before, *::after {
	box-sizing: border-box;
}

/* Remove default margin */
body, h2, p {
	margin: 0;
}

/* GLOBAL STYLES */
body {
	display: grid;
	place-items: center;
	height: 100vh;
}

h2 {
	font-size: 2.25rem;
	font-family: var(--font-title);
	color: var(--white);
	line-height: 1.1;
}

p {
	font-family: var(--font-text);
	font-size: 1rem;
	line-height: 1.5;
	color: var(--white);
}

.flow>*+* {
	margin-top: var(--flow-space, 1em);
}

/* CARD COMPONENT */
.card {
	display: grid;
	place-items: center;
	width: calc(50% - 20px);
	 margin: 10px; 
    height: auto;
	overflow: hidden;
	border-radius: 0.625rem;
	box-shadow: 0.25rem 0.25rem 0.5rem rgba(0, 0, 0, 0.25);
	width: calc(50% - 20px); /* Set width for each card */
	margin: 15px; /* Add margin for spacing between cards */
    height: 520px; /* Set the desired height */
}

.card>* {
	grid-column: 1/2;
	grid-row: 1/2;
}

.card__background {
	object-fit: cover;
	max-width: 100%;
	height: 100%;
}

.card__content {
	--flow-space: 0.9375rem;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	align-self: flex-end;
	height: 55%;
	padding: 12% 1.25rem 1.875rem;
	background: linear-gradient(180deg, hsla(0, 0%, 0%, 0) 0%,
		hsla(0, 0%, 0%, 0.3) 10%, hsl(0, 0%, 0%) 100%);
}

.card__content--container {
	--flow-space: 1.25rem;
}

.card__title {
	position: relative;
	width: fit-content;
}

.card__title::after {
	content: "";
	position: absolute;
	height: 0.3125rem;
	width: calc(100% + 1.25rem);
	bottom: calc(( 1.25rem - 0.5rem)* -1);
	left: -1.25rem;
	background-color: var(--brand-color);
}

.card__button {
    position: absolute;
    top: 0;
    right: 0;
	 padding: 0.5em 1em; 
	width: fit-content;
	width: -moz-fit-content; /* Prefijo necesario para Firefox  */
	font-variant: small-caps;
	font-weight: bold;
	border-radius: 0.45em;
	border: none;
	background-color: var(--brand-color);
	font-family: var(--font-title);
	font-size: 1rem;
	color: var(--black);
	text-decoration: none; 
}

.card-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center; /* Align cards horizontally */
	align-items: flex-start; /* Align cards vertically */
}

.card__button:focus {
	outline: 2px solid black;
	outline-offset: -5px;
}

@media ( any-hover : hover) and (any-pointer: fine) {
	.card__content {
		transform: translateY(62%);
		transition: transform 500ms ease-out;
		transition-delay: 500ms;
	}
	.card__title::after {
		opacity: 0;
		transform: scaleX(0);
		transition: opacity 1000ms ease-in, transform 500ms ease-out;
		transition-delay: 500ms;
		transform-origin: right;
	}
	.card__background {
		transition: transform 500ms ease-in;
	}
	.card__content--container>:not(.card__title), .card__button {
		opacity: 0;
		transition: transform 500ms ease-out, opacity 500ms ease-out;
	}
	.card:hover, .card:focus-within {
		transform: scale(1.05);
		transition: transform 500ms ease-in;
	}
	.card:hover .card__content, .card:focus-within .card__content {
		transform: translateY(0);
		transition: transform 500ms ease-in;
	}
	.card:focus-within .card__content {
		transition-duration: 0ms;
	}
	.card:hover .card__background, .card:focus-within .card__background {
		transform: scale(1.3);
	}
	.card:hover .card__content--container>:not(.card__title), .card:hover .card__button,
		.card:focus-within .card__content--container>:not(.card__title), .card:focus-within .card__button
		{
		opacity: 1;
		transition: opacity 500ms ease-in;
		transition-delay: 1000ms;
	}
	.card:hover .card__title::after, .card:focus-within .card__title::after
		{
		opacity: 1;
		transform: scaleX(1);
		transform-origin: left;
		transition: opacity 500ms ease-in, transform 500ms ease-in;
		transition-delay: 500ms;
	}
}
</style>
</head>
<body> 
<%@ include file="navbar.jsp" %>

<c:forEach items = "${list }" var = "x" >
<div class="card-container">
		<article class="card">
    <img class="card__background" src="displaycompanyimage?id=${x.id}" width="1920" height="2193" />
    <div class="card__content | flow">
        <div class="card__content--container | flow">
            <h2 class="card__title"><c:out value="${x.name}"></c:out></h2>
            <a href="${x.link}" class="card__button" target="_blank">Get Details</a> <!-- Move the button here -->
            <p class="card__description">${x.description}</p>
        </div>
    </div>
</article>
		
		
		</div>
</c:forEach>


    <script>
    const navbar = document.getElementById('navbar');
    const openBtn = document.querySelector('.open-btn');

    function toggleNavbar() {
      if (navbar.style.left === '-300px' || navbar.style.left === '') {
        navbar.style.left = '0';
        openBtn.classList.add('active');
      } else {
        navbar.style.left = '-300px';
        openBtn.classList.remove('active');
      }
    }

    function closeNavbar() {
      navbar.style.left = '-300px';
      openBtn.classList.remove('active');
    }

    const navLinks = document.querySelectorAll('.navbar a');
    for (const link of navLinks) {
      link.addEventListener('click', closeNavbar);
    }
  </script>
</body>
</html>