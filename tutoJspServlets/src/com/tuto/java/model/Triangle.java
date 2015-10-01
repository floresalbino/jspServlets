package com.tuto.java.model;

public class Triangle extends Figure{

	public Triangle(String name){	
		
		this.setName(name);		
		this.setFormula("Base * Height");
	}
	
	@Override
	public void calculateArea(){		
		setArea(0.0);
	}	
}
