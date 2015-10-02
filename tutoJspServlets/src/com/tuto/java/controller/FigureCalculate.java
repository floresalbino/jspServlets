package com.tuto.java.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tuto.java.model.Figure;
import com.tuto.java.model.FigureExpert;

public class FigureCalculate  extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		
		
		String name = request.getParameter("figure");
				
		FigureExpert expert = new FigureExpert();	
		Figure figure = expert.getFigure(name);
		
		
		HashMap<Enum<?>, Double> params = figure.getParams();		
		
		Iterator<HashMap.Entry<Enum<?>,Double>> it = params.entrySet().iterator();
		
		while (it.hasNext()){
			
			HashMap.Entry<Enum<?>,Double> pair = (HashMap.Entry<Enum<?>,Double>)it.next();
			Enum<?> key = pair.getKey();
			
			params.put(key,Double.valueOf(request.getParameter(key.toString())));			
    	}		
		
		figure.setParams(params);
		figure.calculateArea();
		
		request.setAttribute("figureAttribute", figure);
				
		RequestDispatcher view = request.getRequestDispatcher("area_calculator.jsp");
		view.forward(request, response);
		
		
	}

}
