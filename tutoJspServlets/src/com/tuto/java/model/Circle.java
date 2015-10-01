package com.tuto.java.model;

public class Circle extends Figure{

	public Circle(String name){	
		
		this.setName(name);
		this.setFormula("Pi * Radius^2");		
	}
	
	@Override
	public void calculateArea(){
		setArea(0.0);
	}	
}