package com.tuto.java.model;

import com.tuto.java.interfaces.Figure;

public class FigureExpert{
	
	public Object getFigure(String figure){
	
		Figure genericFigure= null;
		
		
		if (figure.equalsIgnoreCase(EnumFigure.TRIANGLE.getName())){
			genericFigure = new Triangle();			
		}
		return genericFigure;
	}
}

