package com.model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class communityDAO {
	private Connection conn;
	private PreparedStatement pst;
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
			if(pst != null) {
				pst.close();
			}if(conn != null) {
				conn.close();
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public String getDate() {
		
		getConnection();
		try {				
			String sql = "SELECT NOW()";
			pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
			pst.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return "";
	}
	

	
	public int write(communityDTO dto) {
	
		getConnection();
	
		int cnt = 0;
	
		
		try {				
			String sql = "INSERT INTO COMMUNITYS VALUES (MSG_NUM.NEXTVAL, ?, ?, SYSDATE)";
			pst = conn.prepareStatement(sql);
			pst.setString(1, dto.getTitle());
			pst.setString(2, dto.getContent());
			cnt= pst.executeUpdate();
			     
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
	
		return cnt;
	}
	
	public ArrayList<communityDTO> getList (int pageNumber){
		getConnection();
		String sql = "SELECT * FROM COMMUNITYS ORDER BY COMM_NUM";
		ArrayList<communityDTO> list = new ArrayList<communityDTO>();
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			// pst.setInt(1,  comm_dto.getCOMM_NUM() - (pageNumber - 1) * 10);
			rs = pst.executeQuery();
			while (rs.next()) {
				communityDTO comm_dto = new communityDTO();
				comm_dto.setCOMM_NUM(rs.getInt(1));
				comm_dto.setTitle(rs.getString(2));
				comm_dto.setContent(rs.getString(3));
				comm_dto.setCOM_DATE(rs.getString(4));
				list.add(comm_dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	
	public boolean nextPage (int pageNumber) {
		getConnection();
		String sql = "SELECT * FROM COMMUNITYS";
		communityDTO comm_dto = new communityDTO();
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, comm_dto.getCOMM_NUM() - (pageNumber - 1) * 10);
			rs = pst.executeQuery();
			if (rs.next()) {
				return true;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return false;
	}
	
		public int update(String id, String title, String content) {
			String sql = "UPDATE COMMUNITYS SET TITLE = ?, CONTENT = ? WHERE ID = ?";
			try {
				pst.setString(1, title);
				pst.setString(2, title);
				pst.setString(3, content);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return -1;
		}
		
		/*
		 * public community getCommunity (int id) { String sql =
		 * "SELECT * FROM COMMUNITYS WHERE ID = ?";
		 * 
		 * }
		 */
	}
	


