package com.controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.communityDAO;
import com.model.communityDTO;

@WebServlet("/writeAction")
public class writeAction extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		response.setCharacterEncoding("euc-kr");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		System.out.println(title);
		System.out.println(content);
		
		
		communityDTO dto = new communityDTO(title, content);
		communityDAO dao = new communityDAO();
		int cnt = dao.write(dto);
		
		
		if (title==null || content==null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안 된 사항이 있습니다.')");
			script.println("history.back()");
			script.println("</script>");
		} 
		
		if (cnt>0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href='html5up-strongly-typed/community.jsp'");
		script.println("alert('게시물이 등록되었습니다')");
		script.println("</script>");
			System.out.println("연결 성공");
		} else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('글쓰기 실패')");
			script.println("history.back()");
			script.println("</script>");
		}
		
		

		
		
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
