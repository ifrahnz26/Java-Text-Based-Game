<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Quiz Level 3</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #E6E6FA; /* Lavender */
            margin: 0;
            padding: 0;
            text-align: center;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #FFF8DC; /* Cornsilk */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
         h1 {
        	color: #9370DB;
        	font-size: 35px;
        }
        h2, label {
            margin-bottom: 20px;
            color: #4B0082; /* Indigo */
        }
        input[type="text"] {
            width: 80%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #9370DB; /* Medium purple */
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #663399; /* Rebecca purple */
        }
        
    </style>
    <script type="text/javascript">
        window.history.forward();
        function noBack() {
            window.history.forward();
        }
    </script>
</head>
<body onload="noBack();">
    <div class="container">
        <h1>ROUND 3: TECHNOLOGY</h1>
        <form action="/TextBasedGame/ResultServlet" method="post">
            <p>Question 1: What is the term for a technique that speeds up the loading time of a web page by loading images and other assets only when needed?</p>
            <input type="text" name="answer1"><br>
            <p>Question 2: What field of technology involves the unique identification and authentication of individuals based on their physiological or behavioral characteristics?</p>
            <input type="text" name="answer2"><br>
            <p>Question 3: Which AI-driven personal assistant, developed by Samsung Electronics, is depicted in the image below?</p><br>
            <img src="/TextBasedGame/images/bixby_logo.jpg" alt="Logo" style="max-width: 300px;"><br>
            <input type="text" name="answer3"><br>
            <p>Question 4: What is the name of the open-source framework for building user interfaces that was created by Facebook and is used by many popular web applications such as Instagram, Netflix, and Airbnb?</p>
            <input type="text" name="answer4"><br>
            <p>Question 5: What is the name of the artificial intelligence system that was developed by DeepMind and defeated the world champion of Go in 2016?</p>
            <input type="text" name="answer5"><br>
            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
