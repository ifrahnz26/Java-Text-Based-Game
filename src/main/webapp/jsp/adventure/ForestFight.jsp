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
            color: #483D8B;
        }
        h3 {
        	color: #6A5ACD;
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
        .player-details  {
            margin-bottom: 5px;
            text-align: center; /* Align text to the left */
        }
        .game-content {
            width: 100%; /* Set width to 70% of container */
            max-width: 800px;
        }
        .choice-btn {
            background-color: #483D8B;
            color: #fff;
            border: none;
            padding: 15px 30px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-bottom: 10px;
            width: 60%;
        }
        .choice-btn:hover {
            background-color: #00008B; 
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
                <p><b><span style="color: #6A5ACD;">NAME:  </span></b><%= player.getName()    %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><span style="color: #6A5ACD;">HP:  </span></b>    <%= player.getHp()    %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><span style="color: #6A5ACD;">POINTS:  </span></b><%= player.getPoints()    %></p>
            <p><b><span style="color: #6A5ACD;">KEY:  </span></b><%= player.isKey()    %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><span style="color: #6A5ACD;">LIVES LEFT:  </span></b>    <%= player.getLives()    %></p>
        </div>
            </div>
       
        <div class="game-content">
            <center><h1>Forest Level</h1></center>
            <p >You encounter a goblin with 12 HP. What will you do?</p>
            <br>
            <form action="ForestFightServlet" method="post">
                <button type="submit" name="choice" value="1" class="choice-btn">Choice 1: Attack the monster</button>
                <button type="submit" name="choice" value="2" class="choice-btn">Choice 2: Run Back</button>
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
