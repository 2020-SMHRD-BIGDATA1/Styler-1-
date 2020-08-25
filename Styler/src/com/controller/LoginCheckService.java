package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDAO;
import com.model.MemberDTO;

@WebServlet("/LoginCheckService")
public class LoginCheckService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		response.setCharacterEncoding("euc-kr");
		// �α��� ��� ����
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println(id);
		System.out.println(pw);
		
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO(id, pw);
		MemberDTO info = dao.login(dto); 
	
		
		if(info !=null){
			
			HttpSession session = request.getSession();
			session.setAttribute("info", info); 
			
			response.setCharacterEncoding("EUC-KR");
			PrintWriter out = response.getWriter();
			out.println("<html>");
			out.println("<body>");
			out.println("<script>window.history.back();</script>");
			out.println("</body>");

			// System.out.println("�̸��̸��̸�"+info.getName());
			response.sendRedirect("/Styler/html5up-strongly-typed/main.jsp");

			//������������ ���ư��� ������..

		}else{
			response.setContentType("text/html); charset=euc-kr");
			response.setCharacterEncoding("EUC-KR");
			// �α��� ����

			PrintWriter out = response.getWriter();

			out.println("<html>");
			out.println("<body>");
			out.println("<script>alert('�α��ο� �����Ͽ����ϴ�.');location.href=\"html5up-strongly-typed/login.jsp\";</script>");
			out.println("</body>");
			out.println("</html>");
			response.sendRedirect("/Styler/html5up-strongly-typed/login.jsp");
			//response.sendRedirect("Styler/html5up-strongly-typed/login.jsp");

		}	

	}
}
