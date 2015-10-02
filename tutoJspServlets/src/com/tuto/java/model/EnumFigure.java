package com.tuto.java.model;

public enum EnumFigure {
	
	TRIANGLE("triangle"),
	CIRCLE("circle"),
	
	BASE("Base:"),
	HEIGHT("Height:"),
	
	RADIUS("Radius:");
	
	private String name = "";
	
	private EnumFigure(String name){
		this.name = name;
	}

	public String getName(){
		return name;
	}
}
