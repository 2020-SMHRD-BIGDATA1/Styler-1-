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
		// �α��� ��� ����
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO(id, pw);
		MemberDTO info = dao.login(dto); 
		
		if(info !=null){

			HttpSession session = request.getSession();
			session.setAttribute("id", info); 
			response.sendRedirect("/motd/html5up-strongly-typed/main.jsp");
			//������������ ���ư��� ������..

		}else{
			// �α��� ����
			response.setContentType("text/html); charset=UTF-9");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('�α��ο� �����Ͽ����ϴ�.');");
			response.sendRedirect("/motd/html5up-strongly-typed/login.jsp");
		}	

	}
}
