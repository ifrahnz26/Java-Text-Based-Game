package com.TextBasedGame.Controller;
import com.TextBasedGame.Model.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class startMovieServlet extends HttpServlet {
 private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	 Movie movie = new Movie();
     HttpSession session = request.getSession();
     session.setAttribute("movie", movie);
     session.setAttribute("questionNumber", 0);

     request.getRequestDispatcher("jsp/movie/guessGame.jsp").forward(request, response);
 }
}

 
