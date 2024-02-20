<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Quiz Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #E6E6FA; /* Lavender */
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .container {
            width: 80%;
            background-color: #FFF8DC; /* Cornsilk */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            color: #4B0082; /* Indigo */
            margin-bottom: 20px;
        }

        .result {
            margin-bottom: 20px;
        }

        .result-label {
            font-weight: bold;
            color: #4B0082; /* Indigo */
            margin-bottom: 5px;
        }

        .percentage {
            font-size: 36px;
            color: #9370DB; /* Medium purple */
        }

        .answer-count {
            font-size: 20px;
            color: #4B0082; /* Indigo */
        }

        .home-button {
            background-color: #9370DB; /* Medium purple */
            color: white;
            padding: 8px 16px; /* Adjust button padding */
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            width: 30%;
        }

        .home-button:hover {
            background-color: #663399; /* Rebecca purple */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Quiz Result</h2>
        <div class="result">
            <% double percentage = (double) request.getAttribute("percentage"); %>
            <p class="percentage"><%= String.format("%.2f", percentage) %>%</p>
        </div>
        <div class="result">
            <p class="result-label">Correct Answers:</p>
            <p class="answer-count"><%= request.getAttribute("correctAnswers") %></p>
        </div>
        <div class="result">
            <p class="result-label">Wrong Answers:</p>
            <p class="answer-count"><%= request.getAttribute("wrongAnswers") %></p>
        </div>
        <a href="index.jsp" class="home-button">Home</a>
    </div>
</body>
</html>
