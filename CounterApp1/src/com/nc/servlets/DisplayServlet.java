package com.nc.servlets;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/display.html")
public class DisplayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ServletContext context;
	
	public void init(ServletConfig config) throws ServletException {
	
		context = config.getServletContext();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	Integer count=(Integer)context.getAttribute("count");
	response.setContentType("text/html");
		response.getWriter().println("<h3>total visitors to this site:"+count+"</h3>");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
