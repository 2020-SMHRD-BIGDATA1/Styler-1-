package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.CosmeticDAO;
import com.model.CosmeticDTO;
import com.model.MemberDAO;
import com.model.MemberDTO;


@WebServlet("/Addtopouch")
public class Addtopouch extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("euc-kr");
		response.setCharacterEncoding("euc-kr");
		
		String pch_name = request.getParameter("pch_name");
		String parttype = request.getParameter("parttype"); 
		String part = request.getParameter("part");
		String brand = request.getParameter("brand"); 
		String color = request.getParameter("color");
		String opendate = request.getParameter("opendate");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id != null )
		{
			System.out.println(id);
			System.out.println(pw);	
		}
		
		/*
		 * MemberDAO dao = new MemberDAO(); MemberDTO dto = new MemberDTO(id, pw);
		 * MemberDTO info = dao.login(dto);
		 * session.setAttribute("info", info); //??? ȸ�������Ҷ� ������ 
		 */
		
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		String memberid = info.getId();
		System.out.println("memberid" + memberid);
		
		CosmeticDTO dto2 = new CosmeticDTO(pch_name, brand, color, part, parttype, opendate);
		CosmeticDAO dao2 = new CosmeticDAO();
		int cnt4 = dao2.add(memberid, dto2);

		if(cnt4 > 0){ // 0���� ũ�ٴ� ���� �Ŀ�ġ ��Ͽ� �����ߴ�.
			
			response.setCharacterEncoding("EUC-KR");
			
			PrintWriter out = response.getWriter();
			out.println("<html>");
			out.println("<body>");
			out.println("<script>");
			out.println("alert('�Ŀ�ġ�� �����ϴ�.')");
			out.println("</script>");
			out.println("</body>");
			out.println("</html>");
			System.out.print("�Ŀ�ġ ��� ����");

		}else{
			response.setContentType("text/html); charset=euc-kr");
			response.setCharacterEncoding("EUC-KR");

			PrintWriter script = response.getWriter();
			script.println("<html>");
			script.println("<body>");
       	 	script.println("<script>");
            script.println("alert('�Ŀ�ġ�� ����� �ʾҽ��ϴ�.')");
            script.println("history.back()");
            script.println("</script>");
            script.println("</body>");
			script.println("</html>");
			response.sendRedirect("html5up-strongly-typed/mypouch.jsp");
			System.out.print("�Ŀ�ġ ��� ����");
		}
		
		
		
	}

}
