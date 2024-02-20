package com.TextBasedGame.Controller;
import com.TextBasedGame.Model.Player;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class EncryptionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the answer from the form
    	HttpSession session = request.getSession();
        Player player = (Player) session.getAttribute("player");

        if (player == null) {
            response.sendRedirect("jsp/adventure/adventure.jsp");
            return;
        }

        String answer = request.getParameter("answer");
        String result = (String) session.getAttribute("result");


        // Check if the answer is correct
        if (answer != null && answer.equalsIgnoreCase("PHANTOM FINALE")) {
        	player.setChoice(3, false);
        	if(player.isKey()) {
        		 request.getRequestDispatcher("jsp/adventure/Portal.jsp").forward(request, response);
        		 return;
    		 }
    		 else {
    			 result = "You have successfully decoded the puzzle and reached the portal, but without the key you can't use it.";
    			 session.setAttribute("result", result);
        		 request.getRequestDispatcher("jsp/adventure/School.jsp").forward(request, response);
        		 return;
    		 }
        } else {
        	result="  Wrong Answer!";
            session.setAttribute("result", result);
   		 request.getRequestDispatcher("jsp/adventure/Encryption.jsp").forward(request, response);
        }
    }
}
