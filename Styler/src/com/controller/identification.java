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

@WebServlet("/identification")
public class identification extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		response.setCharacterEncoding("euc-kr");
		// 로그인 기능 수행
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println(id);
		System.out.println(pw);
		
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO(id, pw);
		int cnt = dao.identification(dto); 
	
		
		if(cnt != 0){
			
			response.setCharacterEncoding("EUC-KR");
			PrintWriter out = response.getWriter();
			out.println("<html>");
			out.println("<body>");
			out.println("<script>window.history.back();</script>");
			out.println("</body>");

			// System.out.println("이름이름이름"+info.getName());
			response.sendRedirect("/Styler/html5up-strongly-typed/mypage.jsp");

			//원래페이지로 돌아가게 해주자..

		}else{
			response.setContentType("text/html); charset=euc-kr");
			response.setCharacterEncoding("EUC-KR");
			// 로그인 실패

			PrintWriter out = response.getWriter();

			out.println("<html>");
			out.println("<body>");
			out.println("<script>alert('로그인에 실패하였습니다.');location.href=\"html5up-strongly-typed/mypage1.jsp\";</script>");
			out.println("</body>");
			out.println("</html>");

			//response.sendRedirect("Styler/html5up-strongly-typed/login.jsp");

		}	

	}
}
