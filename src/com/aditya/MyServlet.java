package com.aditya;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MyServlet
 */
@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public MyServlet() {
        // TODO Auto-generated constructor s
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out= response.getWriter();
		String btn=request.getParameter("btn");
		String name=request.getParameter("userID");
		String password=request.getParameter("password");
		
		if(name.equals("password") && request.getParameter("chk")!=null)
		{
			Cookie c1=new Cookie("username", "admin");
			Cookie c2=new Cookie("password", "admin");
			c1.setMaxAge(360);
			c2.setMaxAge(240);
			
			response.addCookie(c1);
			response.addCookie(c2);
			out.println("Cookie added successfully");
		}
		else
		{
			Cookie ck[]=request.getCookies();
			for(Cookie c : ck)
			{
				out.println(c.getName()+" : "+c.getValue());
			}
		}
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
