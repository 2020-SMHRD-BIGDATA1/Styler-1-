package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDAO;
import com.model.MemberDTO;

@WebServlet("/mypageUpdate")
public class updateMypage extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// ȸ������ ����
		request.setCharacterEncoding("euc-kr");
		response.setCharacterEncoding("euc-kr");
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		String infoid = info.getId();

		String id = infoid;
		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String birthday = request.getParameter("birthday");
		String sex = request.getParameter("sex");
		String tone = request.getParameter("skintone");
		String skintype = request.getParameter("skintype");
		String skinproblem = request.getParameter("skinproblem");

		MemberDTO dto = new MemberDTO(name, id, pw, tel, birthday, sex, tone, skintype, skinproblem);
		MemberDAO dao = new MemberDAO();
		int cnt = dao.mypage(dto);

		if (cnt != 0) { // 0���� ũ�ٴ� ���� ȸ�����Կ� �����ߴ�.
			System.out.println("ȸ������ ���� ����");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('���� ������ �����Ͽ����ϴ�.'); </script>");
			System.out.println("����");
			dto = new MemberDTO(id);
			dao = new MemberDAO();
			info = dao.mypage1(dto);
			if (info != null) {

				session = request.getSession();
				session.setAttribute("info", info);

				response.setCharacterEncoding("EUC-KR");
				out = response.getWriter();
				out.println("<html>");
				out.println("<body>");
				out.println("<script>window.history.back();</script>");
				out.println("</body>");

				// System.out.println("�̸��̸��̸�"+info.getName());
				response.sendRedirect("/Styler/html5up-strongly-typed/main.jsp");

			} else {
				System.out.println("���� ������ �����Ͽ����ϴ�.");
				response.sendRedirect("/Styler/html5up-strongly-typed/mypage.jsp");
				response.setContentType("text/html; charset=euc-kr");
				out = response.getWriter();
				out.println("<script>alert('���������� �����Ͽ����ϴ�.'); </script>");
				out.flush();
			}

		}

	}
}
