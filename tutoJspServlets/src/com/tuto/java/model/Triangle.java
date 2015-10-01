package com.tuto.java.model;

import java.util.HashMap;


public class Triangle extends Figure{

	public Triangle(String name){	
		
		this.setName(name);
		
		HashMap<Enum<?>,Double> map = new HashMap<Enum<?>,Double>();
		map.put(EnumFigure.BASE,0.0);
		map.put(EnumFigure.HEIGHT,0.0);		
		this.setParams(map);
		
		this.setFormula("Base * Height");

	}
	
	@Override
	public void calculateArea(){		
		double area = this.getParams().get(EnumFigure.BASE) * this.getParams().get(EnumFigure.HEIGHT);		
		setArea(area);
	}	
}
