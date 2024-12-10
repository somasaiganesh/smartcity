<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Your head content here -->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        #map {
            width: 100%;
            height: 500px;
        }

        #showMapBtn {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        #showMapBtn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div id="map"></div>

    <button id="showMapBtn">Show Near By Temples</button>

    <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>
    <script>
        document.getElementById('showMapBtn').addEventListener('click', function() {
            initMap();
        });

        function initMap() {
            const map = L.map('map').setView([17.3850, 78.4867], 12); // Center the map on Hyderabad

            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png').addTo(map); // Add OpenStreetMap tiles as the base layer

            // Add markers for different temples in Hyderabad
            const temples = [
                { name: 'Birla Mandir', location: [17.4062, 78.4691], image: 'https://www.holidify.com/images/cmsuploads/compressed/Birla_20200504085426_20200511110226.jpg', url: 'https://maps.app.goo.gl/ZcfDGyXJBKgY5ewd7' },
                { name: 'Chilkur Balaji Temple', location: [17.3237, 78.3517], image: 'https://lh5.googleusercontent.com/p/AF1QipMh5p9FGlRdqAKfgFOBYtRR63eYbunsawNZAW1s=w408-h499-k-no', url: 'https://maps.app.goo.gl/piQFSmuds9YVhSsU7' },
                { name: 'Karmanghat Hanuman Temple', location: [17.3607, 78.5343], image: 'https://images.newindianexpress.com/uploads/user/imagelibrary/2022/2/24/w1200X800/held_riot.jpg', url: 'https://maps.app.goo.gl/LDMmjaLfQHwdGU7Y6' },
                { name: 'Jagannath Temple', location: [17.4085, 78.4667], image: 'https://www.holidify.com/images/cmsuploads/compressed/1024px-Jagannath_Temple_Hyderabad_20180806195918_20180806195944.jpg', url: 'https://maps.app.goo.gl/8A1n4R5aFQNr7vsZ9' },
                { name: 'Ashtalakshmi Temple', location: [17.5600, 78.4718], image: 'https://lh5.googleusercontent.com/p/AF1QipOhAP4EpHXGCR16dXGhOvztwytTjX_KiS2_KD0B=w408-h306-k-no', url: 'https://maps.app.goo.gl/3MiWmSWy4YoLTRyN7' },
                { name: 'Keesaragutta Temple', location: [17.3439, 78.7163], image: 'https://lh5.googleusercontent.com/p/AF1QipNu1wVBkZTQsvUvBad35_yeT1iFOfWYC2k-igk6=w408-h303-k-no', url: 'https://maps.app.goo.gl/A68z3kuuFLVLRE5w8' },
                { name: 'Sanghi Temple', location: [17.3682, 78.6790], image: 'https://lh5.googleusercontent.com/p/AF1QipNjGqN07C_XlY6LxLpIsDyyniWmfQ_a8KcNAtg=w408-h306-k-no', url: 'https://maps.app.goo.gl/Pmrw5eJypdhh9o5F7' },
                { name: 'Peddamma Temple', location: [17.4343, 78.4103], image: 'https://lh5.googleusercontent.com/p/AF1QipNLTohBRgGIAU92MJ9L-d6yKCiGGhcBqt4YmpoF=w408-h306-k-no', url: 'https://maps.app.goo.gl/RqqHwkL7SqNM9ZG68' }
            ];

            temples.forEach(temple => {
                const marker = L.marker(temple.location).addTo(map);
                marker.bindPopup('<h3>' + temple.name + '</h3><a href="' + temple.url + '" target="_blank"><img src="' + temple.image + '" alt="' + temple.name + '" width="200"></a>');
            });
        }
    </script>
</body>
</html>
