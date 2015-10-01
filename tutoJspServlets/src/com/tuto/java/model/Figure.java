package com.tuto.java.model;

import java.util.HashMap;

public abstract class Figure {
		
	private String name;
	private double area;
	private  HashMap<Enum<?>, Double> params;
	private String formula;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public double getArea() {
		return area;
	}
	public void setArea(double area) {
		this.area = area;
	}

	public HashMap<Enum<?>, Double> getParams() {
		return params;
	}
	public void setParams(HashMap<Enum<?>, Double> params) {
		this.params = params;
	}
	
	public String getFormula() {
		return formula;
	}
	public void setFormula(String formula) {
		this.formula = formula;
	}
	public abstract void calculateArea();	

}
