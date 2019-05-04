package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.LostBiz;

@WebServlet(name = "LostDelete", urlPatterns = { "/lostdelete" })
public class LostDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int eno=Integer.parseInt(request.getParameter("eno"));
		
		LostBiz biz=new LostBiz();
		int n=biz.deleteLost(eno);
		
		if(n>0)
		{
			response.sendRedirect("/log/lostlist");
		}else{
			response.sendRedirect("/log/losttest/LostInsert.html");
		}
	}
}
