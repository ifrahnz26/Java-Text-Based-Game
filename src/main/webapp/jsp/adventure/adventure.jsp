<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to the Enchanted Forest</title>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #222;
            color: #fff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            max-width: 600px;
            text-align: center;
        }
        h1 {
            font-size: 36px;
            margin-bottom: 20px;
            color: #4169E1
            
        }
        p {
            font-size: 18px;
            margin-bottom: 20px;
        }
        input[type="text"] {
            padding: 10px;
            width: 300px;
            margin-bottom: 20px;
            background-color: #333;
            color: #fff;
            border: none;
            border-radius: 5px;
        }
        input[type="text"]:focus {
            outline: none;
            border: 2px solid #fd7e14;
        }
        input[type="submit"] {
            background-color: #6495ED;
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #4169E1;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to the Enchanted Forest</h1>
        <p>The air is thick with mystery as you wake up in the middle of an ancient, enchanted forest. Tall trees loom overhead, and strange whispers echo through the leaves.</p>
        <p>Find the portal to your way back home. You have three lives before you meet your eternal death. Good luck, player!</p>
        <form action="/TextBasedGame/StartGameServlet" method="post">
            <input type="text" name="name" placeholder="Enter your name" required>
            <br>
            <input type="submit" value="Start Game">
        </form>
    </div>
</body>
</html>