package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.LoginEntity;

@WebServlet(name = "Logout", urlPatterns = { "/logout" })
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		LoginEntity entity=(LoginEntity)session.getAttribute("logOK");
		
		if(entity != null)
		{
			//session.removeAttribute("logOK");
			session.invalidate();            //��缼�� ��ü �ݱ�
			response.sendRedirect("/log/index.html");
		}
	}
}









