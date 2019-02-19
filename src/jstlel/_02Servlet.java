package jstlel;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.UserVo;

@WebServlet("/02")
public class _02Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UserVo vo2 = new UserVo();
		vo2.setNo(2);

		UserVo vo3 = new UserVo();
		vo3.setNo(3);

		UserVo vo4 = new UserVo();
		vo4.setNo(4);

		//requset Scope에 저장
		request.setAttribute("vo2", vo2);
		
		//session scope
		request.getSession(true).setAttribute("vo2", vo3);

		//Application Scope에 저장
		request.getServletContext().setAttribute("vo4", vo4);
		
		request.getRequestDispatcher("/WEB-INF/views/02.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
