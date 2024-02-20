package com.TextBasedGame.Controller;

import com.TextBasedGame.Model.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//ForestServlet.java


public class ForestFightServlet extends HttpServlet {
 private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     // Retrieve player from session
     HttpSession session = request.getSession();
     Player player = (Player) session.getAttribute("player");

     if (player == null) {
         response.sendRedirect("jsp/adventure/adventure.jsp");
         return;
     }

     String choice = request.getParameter("choice");
     String result = (String) session.getAttribute("result");
     boolean choiceLeftRoad = (boolean) session.getAttribute("choiceLeftRoad");

     switch (choice) {
         case "1":
        		 if(player.getHp() < 12) {
        			 player.resetStats();
        			 result = "You fought a monster having HP higher than yours and lost. You have lost a life.";
            		 session.setAttribute("result", result);
    				 request.getRequestDispatcher("jsp/adventure/ForestPart1.jsp").forward(request, response);
    				 return;
        		 }	 
        		 
        		 else {
        			 player.setHp(player.getHp() - 3);
        			 if(player.zeroHp()) {
                    	 result="Your HP went below 0 and you died. Your status has been reset.";
                		 session.setAttribute("result", result);
                		 request.getRequestDispatcher("jsp/adventure/ForestPart1.jsp").forward(request, response);
                		 return;
                     }
        			 player.setPoints(player.getPoints() + 6);
        			 player.setChoice(1, false);
        			 if(player.getPoints()==10 && !player.getChoice(1)) {
        				 result="You attacked the goblin and won. You earned 6 points but lost 3 HP. You have met the requirements for Final Level.";
        				 session.setAttribute("result", result);
        				 request.getRequestDispatcher("jsp/adventure/School.jsp").forward(request, response);
        				 return;
        			 }
        			 else if(!player.getChoice(1)){
        				 result="You attacked the goblin and won. You earned 6 points but lost 3 HP.  You have not met the requirements for Final Level. \n Please collect enough points.";
        			 }
        		 }
        		 
        		 break;
         case "2":
        	 result="";
        	 break;
        	
         default:
             result = "Invalid choice.";
     }

     session.setAttribute("result", result);
    request.getRequestDispatcher("jsp/adventure/ForestPart2.jsp").forward(request, response);

     // Forward to level1.jsp
     
 }
}
