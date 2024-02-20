<!DOCTYPE html>
<html>
<head>
    <title>Quiz Intro</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #E6E6FA; /* Lavender */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            max-width: 600px;
            background-color: #FFF8DC; /* Cornsilk */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center; 
        }
        h1, p {
            margin-bottom: 20px;
            color: #4B0082; /* Indigo */
        }
        ul {
            text-align: left;
            color: #556B2F; /* Dark olive green */
        }
        li {
            margin-bottom: 10px;
        }
        form {
            display: inline-block;
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
        <h1>Welcome to the Quiz!</h1>
        <p>Rules:</p>
        <ul>
            <li>This quiz consists of three rounds.</li>
            <li>Each round has five questions.</li>
            <li>Your final score will be calculated based on the number of correct answers.</li>
            <li>Enjoy the challenge and have fun testing your knowledge across different topics in this exciting quiz!.</li>
            
        </ul>
        <form action="level1.jsp">
            <input type="submit" value="Start Quiz">
        </form>
    </div>
</body>
</html>
