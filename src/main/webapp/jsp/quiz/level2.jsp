<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Quiz Level 2</title>
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
        <h1>ROUND 2: ENTERTAINMENT</h1>
        <form action=/TextBasedGame/Level2Servlet method="post">
            <p>Question 1: Which animated film features a character named Nemo?</p>
            <input type="text" name="answer1"><br>
            <p>Question 2: Who directed the critically acclaimed Bollywood film "Dangal" based on the real-life story of wrestler Mahavir Singh Phogat?</p>
            <input type="text" name="answer2"><br>
            <p>Question 3: Who was the first artist to win the Album of the Year Grammy Award four times?</p>
            <input type="text" name="answer3"><br>
            <p>Question 4: Guess the Celebrity: This actor is known for his role as a superhero with a suit that has a built-in arc reactor.</p>
            <img src="/TextBasedGame/images/robert_downey_jr.jpg" alt="Iron Man Main Actor" style="max-width: 300px;">
            <input type="text" name="answer4"><br>
            <p>Question 5: Which song by the South Korean boy band BTS holds the Guinness World Record for the most-viewed YouTube video within 24 hours of release?</p>
            <input type="text" name="answer5"><br>
            <input type="submit" value="Next">
        </form>
    </div>
</body>
</html>
