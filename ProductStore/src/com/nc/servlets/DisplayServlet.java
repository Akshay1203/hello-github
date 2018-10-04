package com.nc.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nc.model.Product;
 
@WebServlet("/display.html")
public class DisplayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 private ServletContext context;
	public void init(ServletConfig config) throws ServletException {
		 context= config.getServletContext();
	}

	 @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Product> plist= (List<Product>)context.getAttribute("plist");
		response.setContentType("text/html");
	PrintWriter out=response.getWriter();
	if (plist==null) {
		out.println("<h3>There are no products in the store</h3>");
	}else {
		out.println("<h3>List of available products</h3>");
		out.println("<ol>");
		for(Product prod:plist) {
			out.println("<li>"+prod.getName()+"</li>");
	}
	out.println("</ol>");
	
	out.println((String)request.getAttribute("msg"));
	}
}
	 protected void doPost(HttpServletRequest request,HttpServletResponse response ) throws ServletException, IOException
	 {
		 doGet(request,response);
	 }
}
	
	


