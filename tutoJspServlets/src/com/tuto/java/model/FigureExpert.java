package com.tuto.java.model;


import com.tuto.java.model.EnumFigure;

public class FigureExpert{
	
	public Figure getFigure(String name){
		
		Figure figure = null;
		EnumFigure enumFig = EnumFigure.valueOf(name.toUpperCase());
		
		switch (enumFig){
			
			case TRIANGLE:
				figure = new Triangle(enumFig.getName());				
			break;
			
			case CIRCLE:
				figure = new Circle(enumFig.getName());				
			break;
			
			default:
			break;
		}		
		return figure;
	}
}

