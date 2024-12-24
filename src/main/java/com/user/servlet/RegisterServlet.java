package com.user.servlet;
import java.io.IOException;
import java.*;

import com.DAO.userDAOImpl;
import com.DB.DBConnect;
import com.entity.user;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import 	jakarta.servlet.http.HttpSession;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try
		{
			String name=req.getParameter("fname");
			String email=req.getParameter("email");
			String phno=req.getParameter("phno");
			String password=req.getParameter("password");
			String check=req.getParameter("check");
			//System.out.println(name+" "+email+" "+phno+" "+password+" "+check+"");
			
			user us=new user();
			us.setName(name);
			us.setEmail(email);
			us.setPhno(phno);
			us.setPassword(password);
			
			HttpSession Session=req.getSession();
			
			if(check!=null)
			{
				userDAOImpl dao=new userDAOImpl(DBConnect.getConn());
				boolean f = dao.userRegistre(us);
				if(f)
				{
					//System.out.println("User Register Success....");
					
					Session.setAttribute("succMsg","Registration Successfully...");
					resp.sendRedirect("Register.jsp");
					
				
				}
				else
				{
					//System.out.println("Something Wrong On Server....");
                    Session.setAttribute("failedMsg","Something Wrong On Server....");
                    resp.sendRedirect("Register.jsp");
                    
				}
			}
			else
			{
				//System.out.println("please check Agree & terms and condition");
				 Session.setAttribute("failedMsg","please check Agree & terms and condition");
                 resp.sendRedirect("Register.jsp");
			}
		
		
		}
		catch(Exception e)
		{
			e.printStackTrace();

		}
	}

}
