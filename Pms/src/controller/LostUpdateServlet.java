package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.LostBiz;
import entity.LostEntity;

@WebServlet(name = "LostUpdate", urlPatterns = { "/lostupdate" })
public class LostUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		LostEntity entity=new LostEntity();
		entity.setEno(Integer.parseInt(request.getParameter("eno")));
		entity.setItem(request.getParameter("item"));
		entity.setGetday(request.getParameter("getday"));
		entity.setPlace(request.getParameter("place"));
		entity.setGetp(request.getParameter("getp"));
		
		LostBiz biz=new LostBiz();
		int n=biz.updateLost(entity);
		
		if(n>0)
		{
			response.sendRedirect("/log/lostlist");
		}else{
			response.sendRedirect("/log/losttest/lostUpdate.jsp");
		}
	}
}

