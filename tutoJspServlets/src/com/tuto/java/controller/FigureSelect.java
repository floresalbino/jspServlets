package com.tuto.java.controller;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tuto.java.interfaces.Figure;
import com.tuto.java.model.FigureExpert;

public class FigureSelect extends HttpServlet{

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		
		String figureParameter = request.getParameter("figure");
		
		FigureExpert expert = new FigureExpert();
		Figure figureObject = (Figure) expert.getFigure(figureParameter);
		
		request.setAttribute("parameters", figureObject.getParameters());
		
		RequestDispatcher view = request.getRequestDispatcher("figure.jsp");
		view.forward(request, response);
		
	}	
}


