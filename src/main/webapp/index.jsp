<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Game World</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #355070; /* Dark blue */
            margin: 0;
            padding: 0;
            color: #eaac8b; /* Light peach */
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #6d597a; /* Dark purple */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #e88c7d; /* Light salmon */
            text-align: center;
        }

        .page-link {
            display: block;
            margin-bottom: 20px;
            padding: 10px;
            background-color: #b56576; /* Dark salmon */
            color: #eaac8b; /* Light peach */
            text-decoration: none;
            border-radius: 5px;
            text-align: center;
        }

        .page-link:hover {
            background-color: #e56b6f; /* Light salmon */
            color: #eaac8b; /* Light peach */
        }

        .description {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>WELCOME TO THE GAME WORLD!</h1>
        <div class="description">
            <p><center><i>Explore exciting games and embark on epic adventures!</i></center></p>
        </div>
        <a href="jsp/quiz/quiz.jsp" class="page-link">
            <h2>Quiz</h2>
            <p>Challenge yourself with our quiz and see how much you know!</p>
        </a>
        <a href="jsp/adventure/adventure.jsp" class="page-link">
            <h2>Adventure Game</h2>
            <p>Embark on an epic adventure and explore new worlds!</p>
        </a>
        <a href="jsp/movie/movie.jsp" class="page-link">
            <h2>Guess the Movie!</h2>
            <p>Decode the iconic Bollywood movies represented solely by emojis in this fun and challenging guessing game!</p>
        </a>
       
    </div>
</body>
</html>
