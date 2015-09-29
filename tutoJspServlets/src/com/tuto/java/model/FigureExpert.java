package com.tuto.java.model;

import com.tuto.java.interfaces.Figure;

public class FigureExpert{
	
	public Figure getFigure(String figure){
	
		Figure genericFigure= null;
		
		
		if (figure.equalsIgnoreCase(EnumFigure.TRIANGLE.getName())){
			
			genericFigure = new Triangle(EnumFigure.TRIANGLE);			
		}
		return genericFigure;
	}
}

