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
	
		//ȸ������ ��� ����
		
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

		if(cnt > 0){ // 0���� ũ�ٴ� ���� ȸ�����Կ� �����ߴ�.
			System.out.println("ȸ������ ����");
		// main.jsp�� �̵�
		response.sendRedirect("/motd/html5up-strongly-typed/main.jsp");
		
		}else{
			System.out.println("ȸ������ ����");
			response.sendRedirect("../main.jsp");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('ȸ�����Կ� �����Ͽ����ϴ�.'); </script>");
			out.flush();
		}
			
		}
		

	}

