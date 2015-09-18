package com.tuto.java.model;

public enum EnumFigure {
	
	TRIANGLE("triangle"),
	RECTANGLE("rectangle");
	
	private String name = null;
	
	private EnumFigure(String name){
		this.name = name;
	}

	public String getName() {
		return name;
	}
}
