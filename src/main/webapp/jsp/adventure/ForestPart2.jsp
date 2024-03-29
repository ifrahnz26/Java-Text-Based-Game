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
            max-width: 1000px; 
            display: flex;
            justify-content: center;
            background-color: #2c2c2c;
            align-items: center;
            border-radius: 10px;
            width: 70%;
            text-align: center;
            flex-direction: column; 
            padding: 20px
        }
        h1 {
            font-size: 28px;
            margin-bottom: 20px;
            color: #8A2BE2;
        }
        h3 {
        	color: #DDA0DD;
        }
        p {
            font-size: 16px;
            margin-bottom: 10px;
        }
        .player-details-container {
            background-color: #555555; 
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(255, 255, 255, 0.1);
            padding: 20px;
            margin-top: 10px; 
            width: 50%; 
            display: flex;
            justify-content: center; 
            align-items: center;
        }
        .player-details  {
            margin-bottom: 5px;
            text-align: center;
        }
        .game-content {
            width: 100%; 
            max-width: 800px;
        }
        .choice-btn {
            background-color: #8A2BE2;
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
            background-color: #4B0082; 
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
            max-width: 500px; 
            justify-content: center; 
            align-items: center;
            text-align: center; 
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
                <p><b><span style="color: #DDA0DD;">NAME:  </span></b><%= player.getName()    %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><span style="color: #DDA0DD;">HP:  </span></b>    <%= player.getHp()    %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><span style="color: #DDA0DD;">POINTS:  </span></b><%= player.getPoints()    %></p>
            <p><b><span style="color: #DDA0DD;">KEY:  </span></b><%= player.isKey()    %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><span style="color: #DDA0DD;">LIVES LEFT:  </span></b>    <%= player.getLives()    %></p>
        </div>
            </div>
       
        <div class="game-content">
            <center><h1>Forest Level</h1></center>
            <p >As you walk ahead, you are faced with two roads:</p>
            <br>
            <form action="ForestPart2Servlet" method="post">
                <button type="submit" name="choice" value="1" class="choice-btn">Choice 1: Take the left road</button>
                <button type="submit" name="choice" value="2" class="choice-btn">Choice 2: Take the right road</button>
                <button type="submit" name="choice" value="3" class="choice-btn">Choice 3: Go back.</button>
                
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
