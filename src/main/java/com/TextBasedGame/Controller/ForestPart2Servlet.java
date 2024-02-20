package com.TextBasedGame.Controller;

import com.TextBasedGame.Model.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//ForestServlet.java


public class ForestPart2Servlet extends HttpServlet {
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
     
     switch (choice) {
         case "1":
             result = "";
             session.setAttribute("result", result);
             if(!player.getChoice(1)) {
            	 if(player.getPoints()==10) {
    				 result="You have met the requirements for Final Level.";
    				 session.setAttribute("result", result);
    				 request.getRequestDispatcher("jsp/adventure/School.jsp").forward(request, response);
    				 return;
    			 }
                 else{
    				 result=" You have not met the requirements for Final Level. \n Please collect enough points.";
    			 }
             }
             else{
            	 request.getRequestDispatcher("jsp/adventure/ForestFight.jsp").forward(request, response);
            	 return;
             }
             break;
             
         case "2":
        	 if(player.getChoice(2)) {
        		 result = "You encounter mystical fireflies that offer to heal you. You have gained 6 HP!";
        		 player.setHp(player.getHp() + 6);
        		 player.setChoice(2,  false);
        		 }
        	 else {
        		 result = "You have already earned the HP.";
        	 }
             break;
         case "3":
        	 result="";
        	 session.setAttribute("result", result);
             request.getRequestDispatcher("jsp/adventure/ForestPart1.jsp").forward(request, response);
             return;
         default:
             result = "Invalid choice.";
     }

     session.setAttribute("result", result);
    request.getRequestDispatcher("jsp/adventure/ForestPart2.jsp").forward(request, response);

     
 }
}
