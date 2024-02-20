package com.TextBasedGame.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Level2Servlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get user's answers for Level 2 questions
    	String[] correctAnswers2 = {"Finding Nemo", "Nitesh Tiwari", "Taylor Swift","Robert Downey Jr.","Butter"};

        // Get user's answers from request parameters
        String[] userAnswers2 = {request.getParameter("answer1"), request.getParameter("answer2"), request.getParameter("answer3"),request.getParameter("answer4"),request.getParameter("answer5")};

        // Calculate the number of correct answers
        int correctAnswersLevel2 = 0;

        for (int i = 0; i < correctAnswers2.length; i++) {
            if (correctAnswers2[i].equalsIgnoreCase(userAnswers2[i])) {
                correctAnswersLevel2++;
            }
        }
   
        HttpSession session = request.getSession();
        session.setAttribute("correctAnswersLevel2", correctAnswersLevel2);

        // Forward to Level 3
        request.getRequestDispatcher("jsp/quiz/level3.jsp").forward(request, response);
    }
}

