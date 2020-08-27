package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class VideoDAO {
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	
	public void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "hr";
			String password = "hr";
			// 2.DB연결
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	private void close() {
		try { 	// 연결이 계속 되어 있다면 종료하라 
			if(psmt != null) {
				psmt.close();
			}if(conn != null) {
				conn.close();
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public VideoDTO searchinfo(MakeupInfoDTO makeupSearchInfo) {
		VideoDTO videoDTO = null;
		
		getConnection();
		
		//String sql = "select * from howto where tag = ? | tag=? | tag = ?";
		String sql = "select * from howto where tag = ?";
		try {
			psmt = conn.prepareStatement(sql);
			//psmt.setString(1, makeupSearchInfo.getSituation());
			psmt.setString(1, makeupSearchInfo.getTone());
			//psmt.setString(3, makeupSearchInfo.getHomecomming());
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				String tag = rs.getString("TAG");
				String title = rs.getString("TITLE");
				String url = rs.getString("URL");
				String use = rs.getString("USE");
				videoDTO = new VideoDTO(tag, title, url, use);
				
			} 
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		finally
		{
			close();
		}
		
		
		
		
		return videoDTO;
	}

	
		
				
		

	
	
	
	
}
