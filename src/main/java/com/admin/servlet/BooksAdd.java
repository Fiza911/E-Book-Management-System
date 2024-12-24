package com.admin.servlet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/add_books")
public class BooksAdd extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try
		{
			String bookName=req.getParameter("");
			String author=req.getParameter("");
			Double price=Double.parseDouble(req.getParameter(""));
			String status=req.getParameter("");
			Part part=req.getPart("");
			String fileName=part.getSubmittedFileName();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
