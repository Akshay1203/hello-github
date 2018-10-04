package com.nc.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nc.model.Profile;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/register.html")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Profile profile = new Profile();
		profile.setFirstName(request.getParameter("fname"));
		profile.setLastName(request.getParameter("lname"));
		profile.setPassword(request.getParameter("upass"));
		profile.setUsername(request.getParameter("uname"));
		
		if(request.getParameter("gender")!=null)
		{
			profile.setGender(request.getParameter("gender"));
		}
		if(request.getParameterValues("hobbie")!=null)
		{
			profile.setHobbies(String.join(",",request.getParameterValues("hobbie")));
		}
		if(!request.getParameter("country").equals(""))
		{
			profile.setCountry(request.getParameter("country"));
		}
		List<String> errs=new ArrayList<String>();
		if(profile.getPassword().length()<8)
		{
			errs.add("Password must be length 8 or more");
			}
		if(profile.getUsername().length()<8)
		{
			errs.add("Username must be length 8 or more");
		}
			String path="";
		if(errs.size()>0)
		{
			//error
			path="index.jsp";
			request.setAttribute("errs",errs);
		}
		else
		{
			//success
			path="profile.jsp";
			request.setAttribute("profile",profile);
		}
		RequestDispatcher rd=request.getRequestDispatcher(path);
		rd.forward(request, response);
		}
			
	  protected void doPost (HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
      {
    	  doGet(request,response);
      }
}
	


