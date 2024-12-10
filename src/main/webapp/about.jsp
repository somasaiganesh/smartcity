<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>About</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        /* Add your CSS styles here (unchanged from your version) */
    </style>
</head>
<body>
<%@ include file="navbar.jsp" %>

<header class="header-container">
    <img src="" alt="" width="70">
    <div class="header-text">
        <h1><c:out value="${abc.cname}"/></h1>
    </div>
    <div id="google_translate_element"></div>
</header>
<nav>
    <ul>
        <li><a href="#about">About</a></li>
        <li><a href="#culture">Culture</a></li>
        <li><a href="#festivals">Festivals</a></li>
        <li><a href="#politics">Politics</a></li>
    </ul>
</nav>

<section id="about">
    <img src="displaycityimage?id=${abc.id}" alt="City" width="400" height="100">
    <p><c:out value="${abc.description}"/></p>
</section>

<section id="culture">
    <h2>Culture of the City</h2>
    <img src="displaycitycultureimage?id=${abc.id}" alt="Culture">
    <p><c:out value="${abc.cultureDescription}"/></p>
</section>

<section id="festivals">
    <h2>Festivals in the City</h2>
    <p>Description of festivals celebrated in the City.</p>
    <div class="image-grid">
        <img src="displaycityfestivalimage1?id=${abc.id}" alt="Festival 1">
        <img src="displaycityfestivalimage2?id=${abc.id}" alt="Festival 2">
        <img src="displaycityfestivalimage3?id=${abc.id}" alt="Festival 3">
    </div>
</section>

<section id="gallery">
    <h2>City Famous Food</h2>
    <div class="image-gallery">
        <div class="image-box">
            <img src="displayfamousfoodimage1?id=${abc.id}" alt="Image 1">
        </div>
        <div class="image-box">
            <img src="displayfamousfoodimage2?id=${abc.id}" alt="Image 2">
        </div>
        <div class="image-box">
            <img src="displayfamousfoodimage3?id=${abc.id}" alt="Image 3">
        </div>
        <!-- Add more image-box elements as needed -->
    </div>
</section>

<section id="politics">
    <h2>Politics in the City</h2>
    <div class="image-box">
        <img src="displaypoliticsimage?id=${abc.id}" alt="Image">
    </div>
    <p><c:out value="${abc.politicsDescription}"/></p>
</section>

<section id="map">
    <h2>City Map</h2>
    <p>Explore City on the map:</p>
    <iframe
        src="<c:out value='${abc.maplink}'/>"
        width="600"
        height="450"
        style="border:0"
        allowfullscreen=""
        loading="lazy">
    </iframe>
</section>

<footer>
    <p></p>
</footer>

<!-- Include the Google Translate API -->
<script type="text/javascript">
    function googleTranslateElementInit() {
        new google.translate.TranslateElement(
            { pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE },
            'google_translate_element'
        );
    }
</script>
<script type="text/javascript" src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

<script>
    // JavaScript for navbar toggle (ensure you have a navbar element to work with this script)
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
