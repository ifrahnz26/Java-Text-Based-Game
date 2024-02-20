package com.TextBasedGame.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Level1Servlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get user's answers for Level 1 questions
     // Define correct answers for each question
        String[] correctAnswers1 = {"Elbow", "Italy", "La Tomatina","Greek","2017"};

        // Get user's answers from request parameters
        String[] userAnswers1 = {request.getParameter("answer1"), request.getParameter("answer2"), request.getParameter("answer3"),request.getParameter("answer4"),request.getParameter("answer5")};

        // Calculate the number of correct answers
        int correctAnswersLevel1 = 0;

        for (int i = 0; i < correctAnswers1.length; i++) {
            if (correctAnswers1[i].equalsIgnoreCase(userAnswers1[i])) {
                correctAnswersLevel1++;
            }
        }

        HttpSession session = request.getSession();
        session.setAttribute("correctAnswersLevel1", correctAnswersLevel1);
        // Forward to Level 2
        request.getRequestDispatcher("jsp/quiz/level2.jsp").forward(request, response);
    }
}
