<!DOCTYPE html>
<html>
<head>
    <title>Quiz Level 1</title>
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
        <h1>ROUND 1: GENERAL KNOWLEDGE</h1>
        <form action="/TextBasedGame/Level1Servlet" method="post">
            <p>Question 1: Which part of the body is often referred to as the "funny bone," even though it's not a bone?</p>
            <input type="text" name="answer1"><br>
            <p>Question 2: This architectural wonder is renowned for its gravity-defying tilt. In which country is it situated?</p><br>
            <img src="../../images/leaning_tower_of_pisa.jpg" alt="Leaning Tower of Pisa" style="max-width: 300px;">
            <input type="text" name="answer2"><br>
            <p>Question 3: What is the name of the annual festival in Spain where participants throw ripe tomatoes at each other in the streets of Buñol?</p>
            <input type="text" name="answer3"><br>
            <p>Question 4: What ancient mythology is prominently featured in Rick Riordan's "Percy Jackson & the Olympians" series?</p>
            <input type="text" name="answer4"><br>
            <p>Question 5: In which year was the Goods and Services Tax (GST) passed in India?</p>
            <input type="text" name="answer5"><br>
            <input type="submit" value="Next">
        </form>
    </div>
</body>
</html>
