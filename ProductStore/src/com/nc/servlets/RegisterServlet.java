package com.nc.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nc.model.Product;

@WebServlet("/register.html")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 private ServletContext context;
	public void init(ServletConfig config) throws ServletException {
		 context= config.getServletContext();
	}
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 //1.read all parameters from Html form
		String name=request.getParameter("pname");
		double price=Double.parseDouble(request.getParameter("price"));
		int  quantity=Integer.parseInt(request.getParameter("qty"));
		//2.validate 
		//3.Create product from param
		Product newproduct=new Product(name,price,quantity);		
		//4/get list from context
		List<Product> plist=(List<Product>)context.getAttribute("plist");
		//5.add product to list
		if(plist==null) {
			plist=new ArrayList<>();
		}
		plist.add(newproduct);
		//6.keep list back to context
		context.setAttribute("plist", plist);
	/*RequestDispatcher rd= request.getRequestDispatcher("/display.html");
	request.setAttribute("msg", "1 product added");
	rd.forward(request, response);*/
	
		response.sendRedirect("display.html");
	}
	

}
