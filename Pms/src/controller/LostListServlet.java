package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.LostBiz;
import entity.LostEntity;

@WebServlet(name = "LostList", urlPatterns = { "/lostlist" })
public class LostListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LostBiz biz=new LostBiz();
		List<LostEntity> listlost = biz.listLost();
		
		if(listlost != null)
		{
			RequestDispatcher rd = request.getRequestDispatcher("losttest/lostlist.jsp");              //상대경로(절대경로X)
			request.setAttribute("lost",listlost);
			rd.forward(request, response);
		}
	}
}











