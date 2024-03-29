<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Guess the Movie</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #a85350; 
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
    		width: 80%; 
    		max-width: 600px;
    		background-color: rgba(247, 223, 212, 0.6);
    		padding: 40px;
    		border-radius: 10px;
   		 	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    		text-align: center;
    		margin: auto; 
		}
        h1 {
            color: #33585a; 
            margin-bottom: 20px;
        }
        p {
            color: #33585a; 
            margin-bottom: 20px;
        }
        .start-button {
            background-color: #33585a; 
            color: #f7dfd4; 
            padding: 14px 24px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s;
            font-size: 16px;
        }
        .start-button:hover {
            background-color: #8E563B; 
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>GUESS THE BOLLYWOOD MOVIE!</h1>
        <p>Rules:</p>
        <ul style="text-align: left;">
            <li>You will be shown emojis representing a movie.</li>
            <li>Guess the movie title based on the emojis.</li>
            <li>Click the button below to start the game!</li>
        </ul>
        <br>
        <form action="/TextBasedGame/startMovieServlet" method="post">
            <button type="submit" class="start-button">Start Game</button>
        </form>
    </div>
</body>
</html>
