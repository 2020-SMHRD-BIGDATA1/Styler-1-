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
		
		System.out.println(id);
		System.out.println(pw);
		
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO(id, pw);
		MemberDTO info = dao.login(dto); 
		
		
		
		HttpSession session = request.getSession();
		session.setAttribute("info", info); //??? 회원가입할때 받은거 
		String memberid = info.getId();
		
		CosmeticDTO dto2 = new CosmeticDTO(pch_name, brand, color, part, parttype, opendate);
		CosmeticDAO dao2 = new CosmeticDAO();
		int cnt4 = dao2.add(memberid, dto2);

		if(cnt4 > 0){ // 0보다 크다는 것은 파우치 등록에 성공했다.
			
			response.setCharacterEncoding("EUC-KR");
			PrintWriter out = response.getWriter();
			out.println("<html>");
			out.println("<body>");
			out.println("<script> alert('파우치에 담겼습니다.');</script>");
			out.println("</body>");

		}else{
			response.setContentType("text/html); charset=euc-kr");
			response.setCharacterEncoding("EUC-KR");

			PrintWriter out = response.getWriter();

			out.println("<html>");
			out.println("<body>");
			out.println("<script>alert('파우치에 담기지 않습니다.');location.href=\"html5up-strongly-typed/mypouch.jsp\";</script>");
			out.println("</body>");
			out.println("</html>");
		}
		
		
		
	}

}
