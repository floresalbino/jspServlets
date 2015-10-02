package com.tuto.java.model;

import java.util.HashMap;

public abstract class Figure {
		
	private String name;
	private double area;
	private String formula;
	private  HashMap<Enum<?>, Double> params;
	
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

	public String getFormula() {
		return formula;
	}
	public void setFormula(String formula) {
		this.formula = formula;
	}
	
	public HashMap<Enum<?>, Double> getParams() {
		return params;
	}
	public void setParams(HashMap<Enum<?>, Double> params) {
		this.params = params;
	}
	
	public abstract void calculateArea();
	
}
