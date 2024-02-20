package com.TextBasedGame.Controller;
import com.TextBasedGame.Model.Player;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class StartGameServlet extends HttpServlet {
 private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 String playerName = request.getParameter("name");

     // Create a new Player object with the provided name
     Player player = new Player(playerName);

     int guessesLeft = 3;
     String result = "";

     // Store the player object in the session
     HttpSession session = request.getSession();
     session.setAttribute("player", player);
     session.setAttribute("choicePath", player.getChoice(0));
     session.setAttribute("choiceLeftRoad", player.getChoice(1));
     session.setAttribute("choiceRightRoad", player.getChoice(2));
     session.setAttribute("choiceEncryption", player.getChoice(3));
     session.setAttribute("guessesLeft", guessesLeft);
     session.setAttribute("result", result);

     request.getRequestDispatcher("jsp/adventure/ForestPart1.jsp").forward(request, response);
 }
}

 
