package com.tuto.java.model;

public enum EnumFigure {
	
	TRIANGLE("triangle"),
	RECTANGLE("rectangle");
	
	private String name = "";
	
	private EnumFigure(String name){
		this.name = name;
	}

	public String getName() {
		return name;
	}
}
