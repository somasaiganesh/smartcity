<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Smart City - Wall Posters</title>
    <link rel="stylesheet" href="styles.css" />
    <style>
        :root {
            font-size: 14px;
            margin: 0;
            background-image: url('images/wallposter1.jpg');

            @media (min-width: 60em) {
                font-size: 16px;
            }

            @media screen and (-webkit-min-device-pixel-ratio: 2),
                   screen and (min-resolution: 2dppx) {
                -webkit-font-smoothing: antialiased;
                -moz-osx-font-smoothing: grayscale;
            }
        }

        h2 {
            font-family: 'Oswald', sans-serif;
            font-size: 2.5rem;
            font-weight: 100;
            margin-bottom: 1rem;
        }

        p {
            font-family: 'Lora', serif;
            font-size: 1.25rem;
            line-height: 1.5;
        }

        .rotatingGallery-parentContainer {
            max-width: initial;
            overflow: hidden;
            width: 100%;
        }

        .rotatingGallery {
            margin: 3rem auto;
            position: relative;
            user-select: none;
            width: 75%;

            @media (min-width: 60em) {
                width: 66.66%;
            }

            @media (min-width: 1140px) {
                width: 50%;
            }
        }

        .rotatingGallery-slide {
            left: 0;
            position: absolute;
            visibility: hidden;

            &[data-arrival-index] {
                transform: translate3d(220%, 0, 0);
                transition: transform 0.7s cubic-bezier(0.694, 0, 0.335, 1),
                            visibility 0.7s cubic-bezier(0.694, 0, 0.335, 1);
            }

            &[data-arrival-index="2"],
            &[data-arrival-index="3"],
            &[data-arrival-index="4"] {
                visibility: visible;
            }

            &[data-arrival-index="1"] {
                transform: translate3d(-330%, 0, 0);
            }

            &[data-arrival-index="2"] {
                cursor: w-resize;
                transform: translate3d(-105%, 0, 0);

                @media (min-width: 60em) {
                    transform: translate3d(-110%, 0, 0);
                }
            }

            &[data-arrival-index="3"] {
                transform: translate3d(0%, 0, 0);

                .rotatingGallery-text,
                .rotatingGallery-image,
                .rotatingGallery-link {
                    opacity: 1;
                }

                .rotatingGallery-image {
                    filter: none;
                }
            }

            &[data-arrival-index="4"] {
                cursor: e-resize;
                transform: translate3d(105%, 0, 0);

                @media (min-width: 60em) {
                    transform: translate3d(110%, 0, 0);
                }
            }

            &[data-arrival-index="5"] {
                transform: translate3d(330%, 0, 0);
            }
        }

        .rotatingGallery-text {
            opacity: 0;
            transition: opacity 300ms;

            @media (min-width: 48em) {
                padding-left: 2rem;
                padding-right: 2rem;
            }
        }

        .rotatingGallery-image {
            border: 1px solid rgba(0, 0, 0, .5);
            box-sizing: border-box;
            backface-visibility: hidden;
            filter: sepia(.5);
            height: auto;
            margin-bottom: 1.5rem;
            opacity: .5;
            padding: 1rem;
            transition: opacity 300ms;
            width: 110%;

            &:hover {
                opacity: .75;
            }

            @media (min-width: 60em) {
                padding: 2rem;
            }
        }

        .rotatingGallerye-image {
            border: 1px solid rgba(0, 0, 0, .5);
            box-sizing: border-box;
            backface-visibility: hidden;
            filter: sepia(.5);
            height: 120%;
            margin-bottom: 1.5rem;
            opacity: .5;
            padding: 1rem;
            transition: opacity 300ms;
            width: 110%;

            &:hover {
                opacity: .75;
            }

            a.back-button {
                display: inline-block;
                padding: 10px 20px;
                background-color: white;
                color: black;
                text-decoration: none;
                border: 1px solid black;
                border-radius: 5px;
                transition: background-color 0.3s ease, color 0.3s ease;
                margin-bottom: 20px; /* Adjusts the spacing from the top */
            }

            a.back-button:hover {
                background-color: black;
                color: white;
            }

            @media (min-width: 60em) {
                padding: 2rem;
            }
        }
    </style>
</head>
<body>
    <!-- Go Back Button -->
    <a href="index.jsp" class="back-button">Return Back to Main Page</a>

    <!-- Top Image -->
    <img class="top-image" src="images/text-1702361641885.png" alt="Top Image">

    <!-- Rotating Gallery -->
    <div class="rotatingGallery-parentContainer">
        <div class="rotatingGallery">
            <div class="rotatingGallery-slides">
                <div class="rotatingGallery-slide" data-arrival-index="1">
                    <img class="rotatingGallery-image" alt="" src="images/poster.png" title="">
                </div>
                <div class="rotatingGallery-slide" data-arrival-index="2">
                    <img class="rotatingGallery-image" alt="" src="images/Travel video poster - Made with PosterMyWall.jpg">
                </div>
                <div class="rotatingGallery-slide" data-arrival-index="3">
                    <img class="rotatingGallery-image" alt="" src="images/travel and tour - Made with PosterMyWall.jpg">
                </div>
            </div>
        </div>
    </div>

    <!-- JavaScript -->
    <script>
        function RotatingGallery() {
            const rotatingGallery = document.querySelector(".rotatingGallery"),
                  rotatingGallerySlides = rotatingGallery.querySelector(".rotatingGallery-slides"),
                  rotatingGallerySlide = rotatingGallerySlides.querySelectorAll(".rotatingGallery-slide"),
                  rotatingGallerySlideCount = rotatingGallerySlide.length;

            function slide() {
                var dataArrivalAttribute = this.getAttribute("data-arrival-index");

                if (dataArrivalAttribute == 2) {
                    slideDirection("right");
                } else if (dataArrivalAttribute == 4) {
                    slideDirection("left");
                }
            }

            function slideDirection(direction) {
                for (var i = 0; i < rotatingGallerySlideCount; i++) {
                    var slide = rotatingGallerySlide[i],
                        slideIndex = parseInt(slide.getAttribute("data-arrival-index")),
                        leftSlideIndex = slideIndex - 1,
                        rightSlideIndex = slideIndex + 1;

                    if (direction == "left") {
                        if (leftSlideIndex === 0) {
                            rotatingGallerySlides.appendChild(slide);
                            slide.setAttribute("data-arrival-index", rotatingGallerySlideCount);
                        } else {
                            slide.setAttribute("data-arrival-index", leftSlideIndex);
                        }
                    } else if (direction == "right") {
                        if (rightSlideIndex === rotatingGallerySlideCount + 1) {
                            rotatingGallerySlides.insertAdjacentElement("afterbegin", slide);
                            slide.setAttribute("data-arrival-index", 1);
                        } else {
                            slide.setAttribute("data-arrival-index", rightSlideIndex);
                        }
                    }
                }
            }

            function setGalleryHeight() {
                var slideHeight = rotatingGallerySlide[0].offsetHeight;
                rotatingGallery.style.paddingBottom = slideHeight + "px";
            }

            function init() {
                rotatingGallerySlide.forEach(function(element) {
                    element.addEventListener("click", slide);
                });

                setGalleryHeight();
            }

            return init();
        }

        window.addEventListener("load", function() {
            var gallery = new RotatingGallery();
        });

        window.addEventListener("resize", function() {
            var gallery = new RotatingGallery();
        });
    </script>
</body>
</html>
