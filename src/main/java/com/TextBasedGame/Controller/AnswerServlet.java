package com.TextBasedGame.Controller;
import com.TextBasedGame.Model.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AnswerServlet extends HttpServlet {
 private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	 Movie movie = new Movie();
     HttpSession session = request.getSession();
     session.setAttribute("movie", movie);
     int questionNumber = (int)session.getAttribute("questionNumber");
     String userGuess = request.getParameter("guess");
     String correctAnswer = movie.getAnswer(questionNumber-1);
     String result = "";
     if (userGuess.equalsIgnoreCase(correctAnswer)) {
         //isCorrect = true;
         result = "Congratulations! Your guess is correct.\n\n";
     } else {
         result = "Sorry, your guess is incorrect. The correct answer is: <span class=\"correct-answer\">" + correctAnswer + "</span>\n\n";
     }
     session.setAttribute("result", result);
     request.getRequestDispatcher("jsp/movie/checkAnswer.jsp").forward(request, response);
 }
}

 
