package com.controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDTO;
import com.model.communityDAO;
import com.model.communityDTO;

@WebServlet("/updateAction")
public class updateAction extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		response.setCharacterEncoding("euc-kr");
		
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("id");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String COMM_NUM = null;
		if (request.getParameter("COMM_NUM") != null) {
			COMM_NUM = request.getParameter("COMM_NUM");}
		
		
		if (info != null) {
		String member_ID = info.getId(); 
		communityDTO dto = new communityDTO(title, content, COMM_NUM);
		communityDAO dao = new communityDAO();
		int cnt = dao.update(title, content, COMM_NUM);
		
		
		if (request.getParameter("title")==null || request.getParameter("content")==null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('���� �ۼ����ּ���.')");
			script.println("history.back()");
			script.println("</script>");
		} 
		
		if (cnt>0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href='html5up-strongly-typed/community.jsp'");
		script.println("alert('�Խù��� �����Ǿ����ϴ�')");
		script.println("</script>");
			System.out.println("���� ����");
		} else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('�� ���� ����')");
			script.println("history.back()");
			script.println("</script>");
		}
	
		}
		else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('�α����� ���ּ���.')");
			script.println("history.back()");
			script.println("</script>");
		}
		System.out.println(title);
		System.out.println(content);
		
		
		
		

		
		
//			else {
//			communityDTO dto = new communityDTO(title, content);
//			communityDAO dao = new communityDAO();
//			int cnt = dao.write(dto);
//			
//				else {
//				PrintWriter script = response.getWriter();
//				script.println("<script>");
//				script.println("location.href='community.jsp'");
//				script.println("</script>");
//			}
//		
//		} 
	
	}

}
