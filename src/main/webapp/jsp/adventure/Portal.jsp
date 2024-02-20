<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Congratulations! You've Won</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #141414; /* Darker shade of black */
            color: #fff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }
        .container {
            max-width: 600px;
            padding: 20px;
        }
        h1 {
            font-size: 36px;
            color: #6495ED; /* Plum color */
        }
        p {
            font-size: 18px;
            margin-bottom: 20px;
        }
        .btn {
            background-color: #4169E1; /* Plum color */
            color: #fff;
            border: none;
            padding: 12px 24px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }
        .btn:hover {
            background-color: #563d7c; /* Darker Plum color */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Congratulations! You've Won The Game!</h1>
        <p>You have successfully completed all the challenges and obtained the key to unlock the portal home.</p>
        <p>Click the button below to return to the safety of your home.</p>
        <a href="index.jsp" class="btn">Return Home</a>
    </div>
</body>
</html>