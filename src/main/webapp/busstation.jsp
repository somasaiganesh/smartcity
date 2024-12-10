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

    <button id="showMapBtn">Show Near By Bus Stations</button>

    <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>
    <script>
        document.getElementById('showMapBtn').addEventListener('click', function() {
            initMap();
        });

        function initMap() {
            const map = L.map('map').setView([17.3850, 78.4867], 12); // Center the map on Hyderabad

            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png').addTo(map); // Add OpenStreetMap tiles as the base layer

            // Add markers for different bus stations in Hyderabad
            const busStations = [
                <%-- You can add more bus stations here using JSP syntax --%>
                { name: 'MGBS (Mahatma Gandhi Bus Station)', location: [17.3713, 78.4804], image: 'https://lh5.googleusercontent.com/p/AF1QipNd_LktJm69Dl7TQsl7X1OMC3OsSZGE-ZuBXzQO=w408-h544-k-no', url: 'https://maps.app.goo.gl/f2SxL2CJRhWdKuZF6' },
                { name: 'Jubilee Bus Station', location: [17.4351, 78.4564], image: 'https://lh5.googleusercontent.com/p/AF1QipNTdgcQT1kK_76XC79U40NrSOvL2Jv4RUL8cC5m=w426-h240-k-no', url: 'https://maps.app.goo.gl/uMBkEKoFectpy2nq8' },
                { name: 'Dilsukhnagar Bus Station', location: [17.3684, 78.5246], image: 'https://lh5.googleusercontent.com/p/AF1QipOYBe95zScM4MilTXZQI-OPX66t1ZsMpt5D68Ke=w408-h306-k-no', url: 'https://maps.app.goo.gl/zjYK34XHa9kE3Hfh6' },
                { name: 'Koti Bus Stand', location: [17.3853, 78.4935], image: 'https://lh5.googleusercontent.com/p/AF1QipOV3xgQTZ5YdVP10AOkOwjeQKFhn0c4ahDM_hDr=w408-h277-k-no', url: 'https://maps.app.goo.gl/vV3mQoB9ys64Dbdu6' }, // Add more bus stations here
                { name: 'Secunderabad Bus Station', location: [17.4333, 78.5011], image: 'https://lh5.googleusercontent.com/p/AF1QipP8z0tA7bHWIUqEqqmWPF27XG_a1N7pTicwoCiX=w408-h408-k-no', url: 'https://maps.app.goo.gl/2RdRf63aGDPxaS5P9' },
                { name: 'Lakdikapul Bus Stop', location: [17.3996, 78.4583], image: 'https://lh5.googleusercontent.com/p/AF1QipPN1gw0LOMc8P9JDY-fNkHtWhDrqknzARkrU13x=w408-h306-k-no', url: 'https://maps.app.goo.gl/XHU4Dj2mjy8pjz8h7' },
                { name: 'Begumpet Bus Stop', location: [17.4435, 78.4562], image: 'https://lh5.googleusercontent.com/p/AF1QipNYxxx6MWlqWP1Y8apyt6P-IPiKJOxxrk93OXP3=w426-h240-k-no', url: 'https://maps.app.goo.gl/mt5TukLxyz3d9f7d8' },
                { name: 'Charminar Bus Station', location: [17.3616, 78.4747], image: 'https://lh5.googleusercontent.com/p/AF1QipOIn1W89LlgF_Wz-J6o5Sxz8oSjnGspkVPanqI1=w408-h271-k-no', url: 'https://maps.app.goo.gl/LjpegQx7FRqaJS6k7' }
                
                <%
                // Add more bus stations here using JSP syntax
                %>
            ];

            busStations.forEach(station => {
                const marker = L.marker(station.location).addTo(map);
                marker.bindPopup('<h3>' + station.name + '</h3><a href="' + station.url + '" target="_blank"><img src="' + station.image + '" alt="' + station.name + '" width="200"></a>');
            });
        }
    </script>
</body>
</html>
