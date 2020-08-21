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

		HttpSession session = request.getSession();
		session.setAttribute("info", info); //??? 회원가입할때 받은거 
		
		CosmeticDTO dto = new CosmeticDTO(pch_name, part, parttype, brand, color, opendate);
		CosmeticDAO dao = new CosmeticDAO();
		int cnt = dao.add(dto);

		if(cnt > 0){ // 0보다 크다는 것은 파우치 등록에 성공했다.
			
		}else{
			
		}
		
		
		
	}

}
