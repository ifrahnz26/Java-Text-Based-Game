package com.TextBasedGame.Controller;
import com.TextBasedGame.Model.Player;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class RiddleServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession();
        Player player = (Player) session.getAttribute("player");

        if (player == null) {
            response.sendRedirect("jsp/adventure/adventure.jsp");
            return;
        }

        String answer = request.getParameter("answer");
        String result = (String) session.getAttribute("result");
        
        if (answer.equalsIgnoreCase("piano")) {
            player.setKey(true);
            player.setChoice(4, false);
            result = "Congratulations on solving the riddle! You have obtained a key.";
			 session.setAttribute("result", result);
            request.getRequestDispatcher("/jsp/adventure/School.jsp").forward(request, response);
            return;
        } 
        else {
            int guessesLeft = (int) request.getSession().getAttribute("guessesLeft");
            guessesLeft--;
            request.getSession().setAttribute("guessesLeft", guessesLeft);
            
            if (guessesLeft <= 0) 
                result = "Wrong guess. Try again! (Hint: Musical instrument)";
            else 
                 result = "Wrong guess. Try again!";
            
   			session.setAttribute("result", result);
   			request.getRequestDispatcher("/jsp/adventure/Riddle.jsp").forward(request, response);
   			return;
            } 
    }
}
