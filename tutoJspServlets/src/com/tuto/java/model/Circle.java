package com.tuto.java.model;

import java.util.HashMap;

public class Circle extends Figure{

	public Circle(String name){	
		
		// Initialization of name and formula of figure.
		this.setName(name);
		this.setFormula("Pi * Radius^2");
		
		// Create a map of parameters needed to calculate area and initialize values. 
		HashMap<Enum<?>,Double> map = new HashMap<Enum<?>,Double>();
		map.put(EnumFigure.RADIUS,19.0);
		this.setParams(map);		
		
	}
	
	@Override
	public void calculateArea(){
		
		//Get the HashMap that contains the values of parameters needed to calculate area.
		HashMap<Enum<?>,Double> params = this.getParams();
		
		//Pull the values from HashMap
		double radius = params.get(EnumFigure.RADIUS);

		double area = 3.1416 * (radius*radius);		
		setArea(area);
	}	
}