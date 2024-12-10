<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Smart Chat Bot</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style>

#chat-window {
	background-image: url('images/botinsidecopy.png');
	background-size: cover;
	/* This will scale the image to cover the entire element */
	height: 400px;
	overflow-y: scroll;
	padding: 10px;
	background-color: #f5f5f5;
	border: 1px solid #ccc;	
}


/* Style for the message container */
.message {
	display: flex;
	margin-bottom: 10px;
}

/* Style for the user message */
.user {
	flex-direction: row-reverse;
}

.user .message-text {
	background-color: #dcf8c6;
	color: #000;
	border-radius: 10px 10px 0 10px;
	padding: 10px;
	max-width: 60%;
}

.user .message-text::after {
	content: "";
	position: relative;
	top: -5px;
	right: -10px;
	border-style: solid;
	border-width: 10px 10px 10px 0;
	border-color: transparent #dcf8c6 transparent transparent;
}

/* Style for the bot message */
.bot {
	flex-direction: row;
}

.bot .message-text {
	background-color: #fff;
	color: #000;
	border-radius: 10px 10px 10px 0;
	padding: 10px;
	max-width: 60%;
}

.bot .message-text::before {
	content: "";
	position: relative;
	top: -5px;
	left: -10px;
	border-style: solid;
	border-width: 10px 0 10px 10px;
	border-color: transparent transparent transparent #fff;
}

.btn {
	display: inline-block;
	padding: 10px 20px;
	background-color: #fff;
	color: #333;
	border: 2px solid #fff;
	border-radius: 5px;
	text-decoration: none;
	font-size: 16px;
	cursor: pointer;
}

.question {
	cursor: pointer;
}

#chat-form button[type="submit"] {
	width: 100px;
	height: 35px;
	background-color: #4CAF50;
	color: #fff;
	font-size: 16px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s; /* Add a smooth transition effect */
}

#chat-form button[type="submit"]:hover {
	background-color: #45a049;
}

#chat-form button[type="submit"]:active {
	background-color: #3e8e41;
}

.btn:hover {
	background-color: #333;
	color: #fff;
}

.btn:active {
	background-color: #555;
	border-color: #555;
}

form {
	display: flex;
	flex-direction: column;
	align-items: center;
	margin-top: 20px;
}

input[type="text"] {
	width: 300px;
	height: 30px;
	margin-bottom: 10px;
	padding: 5px;
	font-size: 16px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

input[type="submit"] {
	width: 100px;
	height: 35px;
	background-color: #4CAF50;
	color: #fff;
	font-size: 16px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #3e8e41;
}

.qs {
	font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS',
		sans-serif;
	font-style: monospace;
	text-align: center;
	margin-top: 58px;
	border-width: 6px;
	border-style: solid;
	margin-right: 600px;
	margin-left: 500px;
	font-size: 18px;
	border-top-left-radius: 29px;
	border-bottom-right-radius: 29px;
	height: 76px;
	box-shadow: 10px 10px 8px #888888;
	width: 500px;
	height: 150px;
}

.para {
	text-align: center;
	font-size: 22px;
	margin-top: 50px;
	border-width: 4px;
	border-style: solid;
	background-color: black;
	color: #ffffff;
	font-family: 'Times New Roman', Times, serif;
	height: 30px;
	padding: 12px;
	margin-right: 200px;
	margin-left: 200px;
	border-radius: 45px;
}

.paraa {
	text-align: center;
	font-size: 22px;
	margin-top: 20px;
	border-width: 4px;
	border-style: solid;
	background-color: black;
	color: #ffffff;
	font-family: 'Times New Roman', Times, serif;
	height: 30px;
	padding: 12px;
	margin-right: 200px;
	margin-left: 200px;
	border-radius: 45px;
}

body {
    font-size: 16px; /* Base font size for responsiveness */
  }

  #bot {
    max-width: 800px; /* Limit maximum width for larger screens */
    margin: 0 auto; /* Center the content on larger screens */
  }

  #chat-window {
    height: 300px; /* Adjust height as needed */
      background-size: cover;
   
  }

  .qs {
    margin-left: auto; /* Align right on larger screens */
    margin-right: auto;
    width: 80%; /* Adjust width as needed */
    height: auto; /* Remove fixed height for responsiveness */
  }

  .paraa {
    margin-left: auto; /* Align right on larger screens */
    margin-right: auto;
    width: 60%; /* Adjust width as needed */
    height: auto; /* Remove fixed height for responsiveness */
  }
</style>
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<div id="bot" class="content">
		<h1 align="center">SMART CHAT BOT</h1>
		<div id="chat-window"></div>
		<form id="chat-form">


			<input type="text" id="user-input" placeholder="Type your message...">
			<button type="submit">Send</button>
		</form>
		<script>
            // initialize speech synthesis object
            var synth = window.speechSynthesis;

            // predefined chat responses
            var responses = [{
                    input: "I am new to the city. Can you provide me with a newcomer's guide?",
                    output: "Welcome to the city! We have a newcomer's guide on our website with essential information, local tips, and resources to help you settle in. "
                },
                {
                    input: "What is the latest news in the city today?",
                    output: "You can find the latest city news on our website's news section. I can also provide you with a summary of today's top headlines. "
                },
                {
                    input: "What is the current weather in the city?",
                    output: "I'm sorry, I don't have real-time weather information. You can check the weather forecast for our city on various weather websites or apps."
                },
                {
                    input: "Are there any events happening in the city this weekend?",
                    output: "Yes, there are several events scheduled for this weekend. Would you like me to list them for you?"
                },
                {
                    input: "Tell me about the best places for shopping in the city.",
                    output: "We have a list of popular shopping districts and malls in the city."
                },
                {
                    input: "Give me the latest updates on city infrastructure projects.",
                    output: "You can find updates on city infrastructure projects and developments in our news section."
                },
                {
                    input: "Tell me about the city public transportation options and schedules",
                    output: "You can access information on public transportation, including bus and train schedules, on our website."
                },
                {
                    input: "Give me an overview of the city cultural heritage and museums.",
                    output: "Our city is rich in cultural heritage and museums. I can provide information on the most renowned ones."
                },
                {
                    input: "What is the procedure for recycling in the city?",
                    output: "Recycling procedures can vary by location. I can guide you to the relevant information based on your address. "
                },
                {
                    input: "Give me all the tourist attractions near me.",
                    output: "Sure! I can help you find nearby tourist attractions."
                }
            ];

            // listen for form submission
            document.querySelector("#chat-form").addEventListener("submit", function(e) {
                e.preventDefault();

                // get user input
                var userInput = document.querySelector("#user-input").value;

                // display user input
                displayMessage(userInput, "user");

                // check for predefined response
                var matchedResponse = responses.find(function(response) {
                    return userInput.includes(response.input);
                });

                if (matchedResponse) {
                    // display and speak predefined response
                    var botResponse = matchedResponse.output;
                    displayMessage(botResponse, "bot");
                    speak(botResponse);
                } else {
                    // call API to generate response
                    fetch("https://api.affiliateplus.xyz/api/chatbot?message=" + userInput + "&botname=TestBot&ownername=ChatGPT")
                        .then(response => response.json())
                        .then(data => {
                            // display and speak response
                            var botResponse = data.message;
                            displayMessage(botResponse, "bot");
                            speak(botResponse);
                        })
                        .catch(error => {
                            // display error message
                            var errorMessage = "Sorry, there was an error. Please try again later.";
                            displayMessage(errorMessage, "bot");
                            speak(errorMessage);
                        });
                }

                // clear input field
                document.querySelector("#user-input").value = "";
            });


            /// function to display messages in chat window
            function displayMessage(message, sender) {
                var chatWindow = document.querySelector("#chat-window");
                var messageDiv = document.createElement("div");
                messageDiv.classList.add("message");
                messageDiv.classList.add(sender);
                messageDiv.innerHTML = message;


                if (sender === "user") {
                    messageDiv.style.color = "blue";
                } else {
                    messageDiv.style.color = "black";
                }

                chatWindow.appendChild(messageDiv);
            }

            function speak(text) {
                var utterance = new SpeechSynthesisUtterance(text);
                synth.speak(utterance);
            }
        </script>
	</div>

	<div class="qs">
		<h1>FAQ's- Please Click on a Question and hit Send</h1>
	</div>
	<div>
		<p class="paraa question"
			data-question="I am new to the city. Can you provide me with a newcomer's guide?">I
			am new to the city. Can you provide me with a newcomer's guide?</p>
		<p class="paraa question"
			data-question="What is the latest news in the city today?">What
			is the latest news in the city today?</p>
		<p class="paraa question"
			data-question="What is the current weather in the city?">What is
			the current weather in the city?</p>
		<p class="paraa question"
			data-question="Are there any events happening in the city this weekend?">Are
			there any events happening in the city this weekend?</p>
		<p class="paraa question"
			data-question="Tell me about the best places for shopping in the city.">Tell
			me about the best places for shopping in the city.</p>
		<p class="paraa question"
			data-question="Give me the latest updates on city infrastructure projects.">Give
			me the latest updates on city infrastructure projects.</p>
		<p class="paraa question"
			data-question="Tell me about the city public transportation options and schedules">Tell
			me about the city public transportation options and schedules</p>
		<p class="paraa question"
			data-question="Give me an overview of the city cultural heritage and museums.">Give
			me an overview of the city cultural heritage and museums.</p>
		<p class="paraa question"
			data-question="What is the procedure for recycling in the city?">What
			is the procedure for recycling in the city?</p>


	</div>

</body>
<script>
    // ... (your existing code)

    // Add event listener for each question
    document.querySelectorAll(".question").forEach(function (questionElement) {
        questionElement.addEventListener("click", function () {
            // Set the clicked question in the input field
            document.querySelector("#user-input").value = questionElement.getAttribute("data-question");
        });
    });
</script>
</html>
