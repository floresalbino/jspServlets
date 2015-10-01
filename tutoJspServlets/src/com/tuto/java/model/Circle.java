package com.tuto.java.model;

import java.util.HashMap;

public class Circle extends Figure{

	public Circle(String name){	
		
		this.setName(name);
		
		HashMap<Enum<?>,Double> map = new HashMap<Enum<?>,Double>();
		map.put(EnumFigure.RADIUS,0.0);	
		this.setParams(map);
		
		this.setFormula("Pi * Radius^2");		
		
	}
	
	@Override
	public void calculateArea(){
		double radio = this.getParams().get(EnumFigure.RADIUS);
		double area = 3.1416 * (radio*radio);		
		setArea(area);
	}	
}