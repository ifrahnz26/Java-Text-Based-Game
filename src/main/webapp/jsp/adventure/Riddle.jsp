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
            color: #FF6347;
        }
        h3 {
        	color: #FFA07A;
        }
        .big-code {
            font-size: 30px; 
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
        .player-details p {
            margin-bottom: 10px;
            text-align: center; 
        }
        .game-content {
            width: 100%; 
            max-width: 800px;
        }
        input[type="text"] {
            width: 300px; 
            padding: 10px;
            margin: 10px 0;
            border: 2px solid #FF6347;
            border-radius: 5px;
            font-size: 16px;
        }
        input[type="text"]:focus {
            outline: none;
        }
        button[type="submit"], button[type="button"] {
            background-color: #FF6347; 
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
            background-color: #B22222; 
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
                <p><b><span style="color: #FFA07A">NAME:  </span></b><%= player.getName()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><span style="color: #FFA07A">HP:  </span></b><%= player.getHp()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><span style="color: #FFA07A">POINTS:  </span></b><%= player.getPoints() %></p>
            <p><b><span style="color: #FFA07A">KEY:  </span></b><%= player.isKey()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><span style="color: #FFA07A">LIVES LEFT:  </span></b><%= player.getLives() %></p>
        </div>
            </div>
       
        <div class="game-content">
            <center><h1>School Level</h1></center>
            <p >Deep within the forgotten catacombs,  a ghostly figure, once a celebrated bard, now wanders the halls in eternal silence. 
            Legend holds that only those who solve the bard's enigmatic riddle may discover the key to unlocking its voice, and perhaps, the melody of a forgotten era.</p>
            <br><p >Decipher the enigmatic riddle to unlock the treasure.</p>
            <p><center><span class="big-code"><i>"Ivory and ebony, I'm what you play, unlocking melodies with every touch, and i freely roam in black and white." </i></span></center></p>
            <form action="RiddleServlet" method="post">
                <label for="answer">Enter the answer:</label><br>
                <input type="text" id="answer" name="answer" placeholder="Guess it!"><br>
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
