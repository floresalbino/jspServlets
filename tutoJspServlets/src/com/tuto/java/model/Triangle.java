package com.tuto.java.model;

import java.util.ArrayList;
import java.util.List;

import com.tuto.java.interfaces.Figure;


public class Triangle implements Figure{

	public double base;
	public double height;
	public double area;
	public EnumFigure name;
	
	
	public Triangle(){
	}	
	public Triangle(EnumFigure name){		
		this.name = name;
	}
	
	public double getBase() {
		return base;
	}
	public void setBase(double base) {
		this.base = base;
	}
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}
	@Override
	public double getArea() {
		return area;
	}
	public void setArea(double area) {
		this.area = area;
	}
	@Override
	public EnumFigure getName() {
		return name;
	}
	public void setName(EnumFigure name) {
		this.name = name;
	}	
	@Override
	public ArrayList<String> getParameters() {		
		ArrayList<String> paramList = new ArrayList<String>();
		paramList.add("Base");
		paramList.add("Height");
		
		return paramList;
	}	
}
