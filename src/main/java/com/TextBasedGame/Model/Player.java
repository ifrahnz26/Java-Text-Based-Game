package com.TextBasedGame.Model;

public class Player {
    private String name;
    private int hp;
    private int points;
    private int lives;
    private boolean key;
    private boolean choicePath = true,choiceLeftRoad = true, choiceRightRoad = true, choiceEncryption = true, choiceRiddle = true;

    public Player(String name) {
        this.name = name;
        this.hp = 10;
        this.points = 0;
        this.lives = 3;
        this.key = false;
}

    // Getters and setters
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getHp() {
        return hp;
    }

    public void setHp(int hp) {
        this.hp = hp;
    }

    public int getPoints() {
        return points;
    }

    public void setPoints(int points) {
        this.points = points;
    }

    public int getLives() {
        return lives;
    }

    public void setLives(int lives) {
        this.lives = lives;
    }
    public void resetStats() {
        this.hp = 10;
        this.points = 0;
        this.key=false;
        this.lives--;
        this.choiceEncryption=true;
        this.choiceLeftRoad=true;
        this.choicePath=true;
        this.choiceRightRoad=true;
        this.choiceRiddle=true;
    }
    public boolean isKey() {
    	return key;
    }
    public void setKey(boolean b) {
    	this.key = b;
    }
    public boolean zeroHp() {
    	if (this.hp<=0) {
    		this.resetStats();
    		return true;
    	}
    	return false;
    }
    public boolean getChoice(int n) {
    	boolean[] choice = {this.choicePath,this.choiceLeftRoad,this.choiceRightRoad,this.choiceEncryption,this.choiceRiddle};
    	return choice[n];
    }
    public void setChoice(int n,boolean b) {
    	switch(n) {
    	case 0: this.choicePath = b; break;
    	case 1: this.choiceLeftRoad = b; break;
    	case 2: this.choiceRightRoad = b; break;
    	case 3: this.choiceEncryption = b; break;
    	case 4: this.choiceRiddle = b; break;
    	}
    }
    
}