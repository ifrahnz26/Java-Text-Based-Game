package com.TextBasedGame.Controller;

import com.TextBasedGame.Model.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//ForestServlet.java


public class SchoolServlet extends HttpServlet {
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
        	 if(player.getChoice(3)) {
        		 result = "";
        		 session.setAttribute("result", result);
        		 request.getRequestDispatcher("jsp/adventure/Encryption.jsp").forward(request, response);
        	 }
        	 else {
        		 if(player.isKey()) {
            		 request.getRequestDispatcher("jsp/adventure/Portal.jsp").forward(request, response);
            		 return;
        		 }
        		 else {
        			 result = "You have successfully decoded the puzzle and reached the portal, but without the key you can't use it.";
        		 }
        	 }
        	break;
         case "2":
        	 result = "You descend into the darkness of the basement, only to be ambushed by lurking shadows, resulting to your death. You have lost a life and your status is resetted.";
			 player.resetStats();
			 session.setAttribute("guessesLeft", 3);
			 session.setAttribute("result", result);
			 request.getRequestDispatcher("jsp/adventure/ForestPart1.jsp").forward(request, response);
			 return;
             
         case "3":
        	 if(player.getChoice(4)) {
        	 	 result="";
        		 session.setAttribute("result", result);
        		 request.getRequestDispatcher("jsp/adventure/Riddle.jsp").forward(request, response);
        		 return;
        	 }
        	 else {
        		 result="You have already earned the key.";
        	 }
        	 break;
        	
         default:
             result = "Invalid choice.";
     }

     session.setAttribute("result", result);
    request.getRequestDispatcher("jsp/adventure/School.jsp").forward(request, response);

     
 }
}
