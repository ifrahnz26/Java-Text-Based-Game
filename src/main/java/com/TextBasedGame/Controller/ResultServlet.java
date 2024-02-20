package com.TextBasedGame.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ResultServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get user's answers for Level 3 questions
        
        // Retrieve correct answers from each level servlet
        HttpSession session = request.getSession();
        Integer correctAnswersLevel1 = (Integer) session.getAttribute("correctAnswersLevel1");
        Integer correctAnswersLevel2 = (Integer) session.getAttribute("correctAnswersLevel2");

        // Handle null values
        correctAnswersLevel1 = correctAnswersLevel1 != null ? correctAnswersLevel1 : 0;
        correctAnswersLevel2 = correctAnswersLevel2 != null ? correctAnswersLevel2 : 0;

        // Define correct answers for Level 3 questions
        String[] correctAnswers3 = {"Lazy Loading", "Biometrics","Bixby", "React","AlphaGo"};

        // Get user's answers from request parameters
        String[] userAnswers3 = {request.getParameter("answer1"), request.getParameter("answer2"), request.getParameter("answer3"), request.getParameter("answer4"), request.getParameter("answer5")};

        // Calculate the number of correct answers
        int correctAnswers = 0;

        for (int i = 0; i < correctAnswers3.length; i++) {
            if (correctAnswers3[i].equalsIgnoreCase(userAnswers3[i])) {
                correctAnswers++;
            }
        }
        correctAnswers += (correctAnswersLevel1 + correctAnswersLevel2);

        // Calculate the total number of questions
        int totalQuestions = 15;
        int wrongAnswers = totalQuestions-correctAnswers;

        // Calculate percentage
        double percentage = (double) correctAnswers / totalQuestions * 100;

        // Set attributes to be displayed in the result page
        request.setAttribute("correctAnswers", correctAnswers);
        request.setAttribute("wrongAnswers", wrongAnswers);
        request.setAttribute("percentage", percentage);

        // Forward to the result page
        request.getRequestDispatcher("jsp/quiz/result.jsp").forward(request, response);
    }
}
