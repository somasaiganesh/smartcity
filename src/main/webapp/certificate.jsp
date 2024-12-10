<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CERTIFICATE DOWNLOAD</title>
    <style type='text/css'>
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
        }
        body {
            font-family: Georgia, serif;
            font-size: 24px;
            text-align: center;
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: white; /* Change background color to white */
        }
        .container {
            border: 20px solid tan;
            width: 750px;
            height: 563px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            background-color: white; /* Change background color to white */
            color: black; /* Change text color to black */
        }
        .logo {
            color: tan;
        }
         .back-button {
            position: absolute;
            background-color: #333;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            top: 10px;
            left: 10px;
        }

        .marquee {
            color: tan;
            font-size: 48px;
            margin: 20px;
        }
        .assignment {
            margin: 20px;
        }
        .person {
            border-bottom: 2px solid black;
            font-size: 32px;
            font-style: italic;
            margin: 20px auto;
            width: 400px;
        }
        .reason {
            margin: 20px;
        }

        .download-button {
            position: absolute;
            background-color: rgb(225, 169, 95);
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            top: 10px;
            right: 10px;
        }
    </style>
    <script src="https://rawgit.com/eKoopmans/html2pdf/master/dist/html2pdf.bundle.js"></script>
</head>
<body>
    <a href="citieslist" class="back-button">Return Back</a>

    <div class="container">
    <div class="logo">
       	Urban Compass - Smart City Guide
    </div>

    <div class="marquee">
        Certificate of Completion
    </div>

    <div class="assignment">
        This certificate is presented to
    </div>

    <div class="person" id="certificateRecipient">
        <!-- This will be dynamically filled with the recipient's name -->
    </div>

    <div class="reason">
        For their outstanding knowledge <br> in Indian culture, cuisine, history and traditions.
    </div>
</div>

<button class="download-button" onclick="downloadCertificate()">Download Certificate</button>

    
    <script>
    // Function to set recipient's name in the HTML
    function setRecipientName() {
        var recipientName = '<%= session.getAttribute("recipientName") %>';
        document.getElementById("certificateRecipient").innerText = recipientName;
    }

    // Call the function when the page loads
    window.onload = setRecipientName;
       function downloadCertificate() {
            const certificateContent = document.querySelector('.container');

            // Use html2pdf library to convert HTML to PDF
            html2pdf(certificateContent, {
                margin: 10,
                filename: 'Certificate_of_Completion.pdf',
                image: { type: 'jpeg', quality: 0.98 },
                html2canvas: { scale: 3 }, // Adjust the scale factor
                jsPDF: { unit: 'mm', format: 'a4', orientation: 'portrait' }
            });
        }
    </script>
</body>
</html>
