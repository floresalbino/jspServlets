package com.tuto.java.servlet.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class HelloWorld extends HttpServlet {
	
	private static final long serialVersionUID = 4674353273335194646L;

	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{		
	
		String message  = "Hello world";
		Date today = new Date();
		PrintWriter out = response.getWriter();
		
		out.println(
				"<html> " +
						"<body>" +						
						"<h1 align=center>"+ message + "</h1>" +						
							"<p align='center'>" +						
								"Today is: " + today +
							"</p>"+								
						"</body>" + 
				"</html>"				
				);
	}
}
