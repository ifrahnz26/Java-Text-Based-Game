<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Guess the Movie</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #a85350; /* muted teal */
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
            color: #33585a; /* muted teal */
            margin-bottom: 20px;
        }
        p {
            color: #33585a; /* muted teal */
            margin-bottom: 20px;
        }
        .result {
            font-size: 20px;
            margin-bottom: 20px;
        }
        .result-label {
            font-weight: bold;
            color: #33585a; /* muted teal */
        }
        .correct-answer {
            color: #a167a5; /* light muted teal */
            font-weight: bold;
        }
        .next-button {
    		background-color: #33585a; /* muted teal */
    		color: #f7dfd4; /* light beige */
    		padding: 14px 20px;
    		border: none;
    		border-radius: 4px;
    		cursor: pointer;
    		margin-top: 50px; /* Adjust the margin-top value as needed */
    		text-decoration: none;
    		transition: background-color 0.3s;
    		font-size: 16px;
		}

        .next-button:hover {
            background-color: #8E563B; /* darker muted teal */
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
        <h2>Question <%= questionNumber+1 %> Result</h2>
        <%
            session.setAttribute("questionNumber", questionNumber+1);
        %>
        <div class="result">
			<p>  <%= session.getAttribute("result") %></p>       
	 	</div>
        <% if (questionNumber < 9) { %>
        	<br>
            <a href="jsp/movie/guessGame.jsp" class="next-button">Next Question</a>
        <% } else { %>
            <p>That's it! You've answered all questions. Did you have fun playing?</p>
            <br>
            <a href="index.jsp" class="next-button">Return to Home</a>
        <% } %>
    </div>
</body>
</html>
