package com.nc.servlets;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="HomeServlet", urlPatterns= {"/home.html","/index.html"})
//@WebServlet("/index.html")
public class HomeServlets  extends HttpServlet{

	private ServletContext context;
	
	@Override
	public void init(ServletConfig config)throws ServletException{
		context=config.getServletContext();
	}

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Integer count=(Integer)context.getAttribute("count");
		if (count==null) {
			count=new Integer(1);
		}
			else {
				count++;
		}
			
		context.setAttribute("count", count);
		resp.setContentType("text/html");
		resp.getWriter().println("Welcome to my page!!!");
		resp.getWriter().println("<a href='display.html'>Click here</a>to see total hits!");
		System.out.println("Total hits:"+count);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doPost(req, resp);
	}

	
	
	
}
