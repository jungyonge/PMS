package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.EmpBiz;
import entity.EmpEntity;

@WebServlet(name = "List", urlPatterns = { "/list" })
public class EmpListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EmpBiz biz=new EmpBiz();
		List<EmpEntity> list = biz.listEmp();
		
		if(list != null)
		{
			RequestDispatcher rd = request.getRequestDispatcher("emptest/empList.jsp");     			 //상대경로(절대경로X)
			request.setAttribute("emp",list);
			rd.forward(request, response);
		}
	}
}











