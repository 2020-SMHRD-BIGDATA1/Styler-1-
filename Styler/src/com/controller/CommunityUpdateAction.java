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
public class CommunityUpdateAction extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		response.setCharacterEncoding("euc-kr");
		
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("id");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int COMM_NUM = Integer.parseInt(request.getParameter("COMM_NUM"));
		
		
		/*
		 * if (request.getParameter("COMM_NUM") != null) { COMM_NUM =
		 * Integer.parseInt(request.getParameter("COMM_NUM"));}
		 */		
		
		if (info != null) {
		String member_ID = info.getId(); 
		communityDTO dto = new communityDTO(COMM_NUM, title, content);
		communityDAO dao = new communityDAO();
		int cnt = dao.update(COMM_NUM, title, content);
		
		
		if (request.getParameter("title")==null || request.getParameter("content")==null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Please fill in the blank')");
			script.println("history.back()");
			script.println("</script>");
		} 

		
	
        int result = dao.update(COMM_NUM, request.getParameter("title"),request.getParameter("content"));
        if(result == -1) {
           PrintWriter script = response.getWriter();
           script.println("<script>");
           script.println("alert('�� ������ �����߽��ϴ�.')");
           script.println("history.back()");
           script.println("</script>");
        }else {
        	 PrintWriter script = response.getWriter();
        	 script.println("<script>");
             script.println("alert('���������� �����Ǿ����ϴ�.')");
             script.println("history.back()");
             script.println("</script>");
           response.sendRedirect("html5up-strongly-typed/community.jsp");
           System.out.println("result="+result);
			/*
			 * script.println("<script>"); script.println("location.href = 'main'");
			 * script.println("</script>");
			 */
        }

		
		}
		
		
		
		
	}
}
		
		
		/*if (cnt>0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href='html5up-strongly-typed/community.jsp'");
		script.println("alert('Successfully modified')");
		script.println("</script>");
			System.out.println("���� ����");
		} else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Fail')");
			script.println("history.back()");
			script.println("</script>");
		}
	
		}
		else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Please login first.')");
			script.println("history.back()");
			script.println("</script>");
		}
		System.out.println(title);
		System.out.println(content);*/
		
		
		
		

		
		
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
	
	


