package com.tuto.java.model;


import com.tuto.java.model.EnumFigure;

public class FigureExpert{
	
	public Figure getFigure(String name){
		
		Figure figure = null;
		EnumFigure enumFig = EnumFigure.valueOf(name.toUpperCase());
		
		switch (enumFig){
			
			case TRIANGLE:
				figure = new Figure("triangle");				
			break;
			
			case CIRCLE:
				figure = new Figure("circle");				
			break;
			
			default:
			break;
		}		
		return figure;
	}
}

