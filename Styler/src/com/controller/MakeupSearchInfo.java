package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.model.MakeupInfoDTO;
import com.model.VideoDAO;
import com.model.VideoDTO;

@WebServlet("/MakeupSearchInfo")
public class MakeupSearchInfo extends HttpServlet {

	public MakeupSearchInfo(String[] situation, String[] tone, String[] homecomming) {
		// TODO Auto-generated constructor stub
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("EUC-KR");
	
		String situation = null;
		String tone = null;
		String homecomming = null;
		
		situation = request.getParameter("situation");
		tone = request.getParameter("tone");
		homecomming = request.getParameter("homecomming");
		
		
		System.out.println(situation);
		System.out.println(tone);
		System.out.println(homecomming);
		
		
		String tag = null;
		String title = null;
		String url = null;
		String use = null;
		VideoDTO videoDTO = new VideoDTO(tag, title, url, use);
		VideoDAO videoDAO = new VideoDAO();
		
		
		if(situation != null | tone != null | homecomming != null)
		{
			System.out.println("searchInfo 받아오기 성공!!!");
			MakeupInfoDTO makeupSearchInfo = new MakeupInfoDTO(situation, tone, homecomming);
			HttpSession session = request.getSession();
			
			
			videoDTO = videoDAO.searchinfo(makeupSearchInfo);
			
			session.setAttribute("videoInfo", videoDTO);
			
			response.sendRedirect("makeupsearchresult.jsp");
		}
		else
		{
			System.out.println("searchInfo 받아오기 실패...");
			response.sendRedirect("makeupsearch.jsp");
		}
		
		
	
	
	
	
	
	
	
	
	
	}

}
