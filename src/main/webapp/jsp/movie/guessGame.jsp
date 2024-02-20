<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Guess the Movie</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #33585a; /* light beige */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
    		width: 80%; /* Set width to cover 80% of the viewport */
    		max-width: 800px; /* Limit maximum width */
    		background-color: rgba(247, 223, 212, 0.6); /* light beige with 40% transparency */
    		padding: 40px;
    		border-radius: 10px;
    		box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    		text-align: center;
   		 	margin: auto; /* Center horizontally */
		}
		
		h2 {
    		color: #a85350; /* muted teal */
    		margin-bottom: 20px;
   		 	font-size: 40px; /* Adjust the font size to your preference */
		}
		
        p {
            color: #a85350; /* muted teal */
            margin-bottom: 20px;
            font-size: 36px;
        }
        input[type="text"] {
            width: 80%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #a85350; /* muted teal */
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #a85350; /* muted teal */
            color: #f7dfd4; /* light beige */
            padding: 14px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #264d4f; /* darker muted teal */
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
   		 <% int questionNumber = (int)session.getAttribute("questionNumber");
   		 com.TextBasedGame.Model.Movie movie = (com.TextBasedGame.Model.Movie) session.getAttribute("movie"); %>
        <h2>Question <%= questionNumber+1 %></h2>
        
        <% 
            // Display the current question
            out.println("<p>" + movie.getQuestion(questionNumber-1)+ "</p>");
        %>
        <form action="/TextBasedGame/AnswerServlet" method="post">
            <input type="text" name="guess" placeholder="Enter your guess!">
            <br>
            <input type="submit" value="Submit Guess">
        </form>
    </div>
</body>
</html>
