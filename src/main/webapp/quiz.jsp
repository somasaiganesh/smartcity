<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Quiz</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        #quiz {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 500px;
            position: relative;
        }

        #result {
            position: absolute;
            top: 0;
            left: 0;
            width: 96%;
            background-color: #ff5050; /* Red background color */
            color: #fff;
            padding: 10px;
            border-radius: 10px;
            text-align: center;
            font-size: 18px;
            margin-bottom: 20px; /* Add margin at the bottom to separate from questions */
        }

        .question {
            margin-bottom: 20px;
        }

        button {
            background-color: #4caf50;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div id="quiz">
        <!-- Display the result at the top -->
        <div id="result"></div>

         <div class="question" id="question1">
            <p>1. Which city in India is referred to as "The City of Nizams"?</p>
            <label><input type="radio" name="q1" value="Hyderabad"> Hyderabad</label>
            <label><input type="radio" name="q1" value="Lucknow">Lucknow</label>
            <label><input type="radio" name="q1" value="Beijing">  Bhopal</label>
        </div>
        <div class="question" id="question2">
            <p>2.Which city is often referred to as "The Gateway of India"?</p>
            <label><input type="radio" name="q2" value="Elephant"> Kolkata</label>
            <label><input type="radio" name="q2" value="Blue Whale">Delhi</label>
            <label><input type="radio" name="q2" value="Mumbai"> Mumbai</label>
        </div>

        <div class="question" id="question3">
            <p>3.Which city is often referred to as "The Manchester of India"?</p>
            <label><input type="radio" name="q3" value="William Shakespeare">Ahmedabad</label>
            <label><input type="radio" name="q3" value="Coimbatore"> Coimbatore</label>
            <label><input type="radio" name="q3" value="Charles Dickens"> Chennai</label>
        </div>

        <div class="question" id="question4">
            <p>Which city in India is known as "The Detroit of India"?</p>
            <label><input type="radio" name="q4" value="Mars"> Pune</label>
            <label><input type="radio" name="q4" value="Venus"> Hyderabad</label>
            <label><input type="radio" name="q4" value="Chennai"> Chennai</label>
        </div>

        <div class="question" id="question5">
            <p>5.What animal is depicted on the official emblem of India?</p>
            <label><input type="radio" name="q5" value="Peso"> Elephant</label>
            <label><input type="radio" name="q5" value="Lion"> Lion</label>
            <label><input type="radio" name="q5" value="Dollar"> Tiger</label>
        </div>

        <div class="question" id="question6">
            <p>6. Which Indian city is often called "The Queen of the Arabian Sea"?</p>
            <label><input type="radio" name="q6" value="1912"> Chennai</label>
            <label><input type="radio" name="q6" value="1920"> Mumbai</label>
            <label><input type="radio" name="q6" value="Kochi"> Kochi</label>
        </div>
        <!-- Add more questions as needed -->

        <button onclick="submitQuiz()">Submit</button>
        <button onclick="goBack()" class="btn btn-default btn-lg ">Return Back</button>
        
    </div>

    <script>
    // script.js
    const totalQuestions = 6;

    function submitQuiz() {
        // Logic to calculate the score
        var score = 0;

        for (let i = 1; i <= totalQuestions; i++) {
            var selectedAnswer = getSelectedAnswer('q' + i);
            var correctAnswer = getCorrectAnswer(i);

            if (selectedAnswer && selectedAnswer === correctAnswer) {
                score++;
            }
        }

        // Display the result at the top
        var resultDiv = document.getElementById('result');
        resultDiv.innerHTML = "Your score: " + score + " out of " + totalQuestions;

        // Certificate generation
        if (score >= 4) {
            resultDiv.innerHTML += "<br>Congratulations! You've passed. <a href='certificate' id='downloadCertificate'>View Certificate</a>";
        }
    }

    function getSelectedAnswer(questionId) {
        var selectedOption = document.querySelector('input[name="' + questionId + '"]:checked');
        return selectedOption ? selectedOption.value : null;
    }

    function getCorrectAnswer(questionNumber) {
        // Placeholder for correct answers, replace with actual correct answers
        var correctAnswers = {
            1: "Hyderabad",
            2: "Mumbai",
            3: "Coimbatore",
            4: "Chennai",
            5: "Lion",
            6: "Kochi"
        };

        return correctAnswers[questionNumber];
    }
    
    function goBack() {
        window.history.back();
    }
    
    
    </script>
</body>
</html>
