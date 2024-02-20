<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>School Level</title>
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
        }
        .container {
            max-width: 1000px; /* Max width for the entire content */
            display: flex;
            justify-content: center;
            background-color: #2c2c2c;
            align-items: center;
            border-radius: 10px;
            width: 70%;
            text-align: center;
            flex-direction: column; /* Align items vertically */
            padding: 20px
        }
        h1 {
            font-size: 28px;
            margin-bottom: 20px;
            color: #F08080;
        }
        h3 {
        	color: #FFE4E1;
        }
        .big-code {
            font-size: 36px; /* Adjust the code font size */
        }
        p {
            font-size: 16px;
            margin-bottom: 10px;
        }
        .player-details-container {
            background-color: #555555; /* Dark shade of black */
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(255, 255, 255, 0.1);
            padding: 20px;
            margin-top: 10px; /* Add margin to create space between player details and game content */
            width: 50%; /* Set width to 30% of container */
            display: flex;
            justify-content: center; /* Align content to the left */
            align-items: center;
        }
        .player-details p {
            margin-bottom: 10px;
            text-align: center; /* Align text to the left */
        }
        .game-content {
            width: 100%; /* Set width to 70% of container */
            max-width: 800px;
        }
        input[type="text"] {
            width: 300px; /* Adjust width of input field */
            padding: 10px;
            margin: 10px 0;
            border: 2px solid #F08080; /* Border color */
            border-radius: 5px;
            font-size: 16px;
        }
        input[type="text"]:focus {
            outline: none;
        }
        button[type="submit"], button[type="button"] {
            background-color: #F08080; /* Button color */
            color: #fff;
            border: none;
            margin-top:10px;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-size: 16px;
        }
        button[type="submit"]:hover, button[type="button"]:hover {
            background-color: #CD5B45; /* Darker color on hover */
        }
        .result {
            background-color: #555555; 
            color: #fff;
            margin-top: 20px;
            
            padding: 10px;
            border-radius: 5px;
            font-weight: bold;
            display: flex;
            width: 70%;
            max-width: 500px; /* Limit width of result box */
            justify-content: center; /* Align content to the left */
            align-items: center;
            text-align: center; /* Center text */
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
        <div class="player-details-container">
            
            <% com.TextBasedGame.Model.Player player = (com.TextBasedGame.Model.Player) session.getAttribute("player"); %>
            <div class="player-details">
            	<center><h3>PLAYER DETAILS</h3></center>
                <p><b><span style="color: #FFE4E1">NAME:  </span></b><%= player.getName()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><span style="color: #FFE4E1">HP:  </span></b><%= player.getHp()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><span style="color: #FFE4E1">POINTS:  </span></b><%= player.getPoints() %></p>
            <p><b><span style="color: #FFE4E1">KEY:  </span></b><%= player.isKey()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><span style="color: #FFE4E1">LIVES LEFT:  </span></b><%= player.getLives() %></p>
        </div>
            </div>
       
        <div class="game-content">
            <center><h1>School Level</h1></center>
            <p >As you enter the eerie classroom, shadows dance across the walls, casting an unsettling atmosphere.
            A cryptic message looms on the chalkboard, beckoning decryption through the Atbash code.</p>
            <br><p >Decode to reveal the hidden path forward within the enigmatic challenge.</p>
            <p><center><span class="big-code">KSZMGLN URMZOV</span></center></p>
            <form action="EncryptionServlet" method="post">
                <label for="answer">Enter the decrypted text:</label><br>
                <input type="text" id="answer" name="answer" placeholder="Decrypt it!"><br>
                <button type="submit">Submit</button>
            </form>
            <form action="jsp/adventure/School.jsp">
                <button type="submit">Go Back</button>
            </form>
            <br>
            
        </div>
        <div class="result">
        		<H3>SURVIVAL STATUS:</H3><br><br>
                 <p>  <%= session.getAttribute("result") %></p>
            </div>
    </div>
    
</body>
</html>
