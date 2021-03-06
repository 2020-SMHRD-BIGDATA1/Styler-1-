package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;
import com.model.MemberDTO;


@WebServlet("/JoinCheckService")
public class JoinCheckService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//회원가입 기능 수행
		
		request.setCharacterEncoding("euc-kr");
		response.setCharacterEncoding("euc-kr");
		
		String name = request.getParameter("name");
		String id = request.getParameter("id"); 
		String pw = request.getParameter("pw"); 
		String tel = request.getParameter("tel");
		String birthday = request.getParameter("birthday");
		String sex = request.getParameter("sex");
		String tone = request.getParameter("skintone");
		String skintype = request.getParameter("skintype");
		String skinproblem = request.getParameter("skinproblem");

		MemberDTO dto = new MemberDTO(name, id, pw, tel, birthday, sex, tone, skintype, skinproblem);
		MemberDAO dao = new MemberDAO();
		int cnt = dao.join(dto);

		if(cnt > 0){ // 0보다 크다는 것은 회원가입에 성공했다.
			System.out.println("회원가입 성공");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('회원가입에 성공하였습니다.'); </script>");
		// main.jsp로 이동
		response.sendRedirect("/Styler/html5up-strongly-typed/main.jsp");
		System.out.println("성공");
		}else{
			System.out.println("회원가입 실패");
			response.sendRedirect("/Styler/html5up-strongly-typed/main.jsp");
			response.setContentType("text/html; charset=euc-kr");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('회원가입에 실패하였습니다.'); </script>");
			out.flush();
		}
			
		}
		

	}

