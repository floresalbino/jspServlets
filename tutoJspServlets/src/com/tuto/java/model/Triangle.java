package com.tuto.java.model;

import java.util.HashMap;

public class Triangle extends Figure{

	public Triangle(String name){
		
		// Initialization of name and formula of figure.
		this.setName(name);		
		this.setFormula("(Base * Height) / 2");
		
		// Create a map of parameters needed to calculate area and initialize values.
		HashMap<Enum<?>,Double> map = new HashMap<Enum<?>,Double>();
		map.put(EnumFigure.BASE,0.0);
		map.put(EnumFigure.HEIGHT,0.0);
		this.setParams(map);		

	}
	
	@Override
	public void calculateArea(){
		
		//Get the HashMap that contains the values of parameters needed to calculate area. 
		HashMap<Enum<?>,Double> params = this.getParams();
		
		//Pull the values from HashMap
		double base = params.get(EnumFigure.BASE);
		double height = params.get(EnumFigure.HEIGHT);		
		
		double area = (base * height) / 2;		
		setArea(area);
	}	
}
