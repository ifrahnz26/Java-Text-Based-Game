<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Game Over</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #141414;
            color: #fff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            text-align: center;
        }
        h1 {
            font-size: 72px;
            margin-bottom: 30px;
            color: #dc3545;
        }
        .btn-container {
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .btn-container a {
            background-color: #dc3545;
            color: #fff;
            border: none;
            padding: 15px 30px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 18px;
            margin: 0 10px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .btn-container a:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>GAME OVER</h1>
        <div class="btn-container">
            <a href="jsp/adventure/adventure.jsp">Restart Game</a>
            <a href="index.jsp">Go to Home Page</a>
        </div>
    </div>
</body>
</html>
