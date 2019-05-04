package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.EmpBiz;
import entity.EmpEntity;

@WebServlet(name = "Insert", urlPatterns = { "/insert" })
public class EmpInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
/*		String ename=request.getParameter("ename");
		String phone=request.getParameter("phone");
		String dept=request.getParameter("dept");
		System.out.println(ename+"  "+phone+"  "+dept);*/
		
		EmpEntity entity=new EmpEntity();
		entity.setEno(Integer.parseInt(request.getParameter("eno")));	//사원번호추가
		entity.setEname(request.getParameter("ename"));
		entity.setInday(request.getParameter("inday"));
		entity.setAdr(request.getParameter("adr"));
		entity.setPhone(request.getParameter("phone"));
		
		EmpBiz biz=new EmpBiz();
		int n=biz.insertEmp(entity);        //저장성공하면 1, 실패하면 0을 리턴
		
		if(n>0)
		{
			response.sendRedirect("/log/list");
		}else{
			response.sendRedirect("/log/emptest/empInsert.html");
		}
	}
}







