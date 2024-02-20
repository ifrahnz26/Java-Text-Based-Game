package com.TextBasedGame.Model;

public class Movie {
	private String[] questions = {
            "Which movie features emojis: 👀😎🎹🔪?",
            "Which movie features emojis: 📖🏊💃🕺🏆?",
            "Which movie features emojis: 🍅🛫💃🐂?",
            "Which movie features emojis: 🪔🕴🏼🥃💃😭?",
            "Which movie features emojis: 🙍🏻‍♀️🏝👨🏻‍⚕️🪑️?",
            "Which movie features emojis: 🎸🚂🏃🏻‍♀️️?",
            "Which movie features emojis: 💎🏍✌️?",
            "Which movie features emojis: 👮‍♂️🪖👩‍❤️‍👨💣⚰️",
            "Which movie features emojis: 👩🏻👨‍🦳💩🚐🪑️?",
            "Which movie features emojis: 🏀👧💍💜?"
        };
	private String[] answers = {
             "Andhadhun",
             "Student of the year",
             "Zindagi Na Milegi Dobara",
             "Devdas",
             "Dear Zindagi",
             "Dilwale Dulhania Le Jayenge",
             "Dhoom 2",
             "Shershaah",
             "Piku",
             "Kuch Kuch Hota Hai"
         };
	public String getQuestion(int n) {
		return questions[n+1];
	}
	public String getAnswer (int n) {
		return answers[n+1];
	}
}
