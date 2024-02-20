package com.TextBasedGame.Controller;

import com.TextBasedGame.Model.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ForestPart1Servlet extends HttpServlet {

private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     HttpSession session = request.getSession();
     Player player = (Player) session.getAttribute("player");

     if (player == null) {
         response.sendRedirect("jsp/adventure/adventure.jsp");
         return;
     }
     if(player.getLives()<=0) {
	 		request.getRequestDispatcher("jsp/adventure/GameOver.jsp").forward(request, response);
	 		return;
	     }

     String choice = request.getParameter("choice");
     String result = (String) session.getAttribute("result");

     switch (choice) {
         case "1":
             result = "You were attacked by a snake leading to your fall. You have lost 2 HP.";
             player.setHp(player.getHp() - 2);
             if(player.zeroHp()) {
            	 result="Your HP went below 0 and you died. Your status has been reset.";
        		 session.setAttribute("result", result);
        		 request.getRequestDispatcher("jsp/adventure/ForestPart1.jsp").forward(request, response);
        		 return;
             }
             break;
         case "3":
        	 if(player.getChoice(0)) {
        		 result = "You encounter a wise hermit who shares forgotten lore. You have gained 4 points!";
        		 player.setPoints(player.getPoints() + 4);
        		 player.setChoice(0, false);
        	 }
        	 else {
        		 result = "You have already earned the points.";
        	 }
             break;
         case "2":
        		 result = "You meet a grumpy witch and helped find her wand.<br>Witch: \"Ah, my wand! You've a keen eye, wanderer. Thanks for your help. Follow this trail ahead; it leads to wonders. Safe travels!\"";
        		 session.setAttribute("result", result);
        		 request.getRequestDispatcher("jsp/adventure/ForestPart2.jsp").forward(request, response);
        		 return;
        	
         default:
             result = "Invalid choice.";
     }

     session.setAttribute("result", result);
    request.getRequestDispatcher("jsp/adventure/ForestPart1.jsp").forward(request, response);

     
 }
}
