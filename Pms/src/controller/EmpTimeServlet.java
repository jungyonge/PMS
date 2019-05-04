package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.EmpBiz;
import entity.EmpEntity;

@WebServlet(name = "Time", urlPatterns = { "/time" })
public class EmpTimeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		EmpEntity entity=new EmpEntity();
		entity.setEno(Integer.parseInt(request.getParameter("eno")));
		entity.setTimes(Integer.parseInt(request.getParameter("times")));
		entity.setAlltimes(Integer.parseInt(request.getParameter("times")) + Integer.parseInt(request.getParameter("alltimes")));	 
		
		EmpBiz biz=new EmpBiz();
		int n=biz.timeEmp(entity);        //저장성공하면 1, 실패하면 0을 리턴
		
		if(n>0)
		{
			response.sendRedirect("/log/list");
		}else{
			response.sendRedirect("/log/emptest/empTime.jsp");
		}
	}
}