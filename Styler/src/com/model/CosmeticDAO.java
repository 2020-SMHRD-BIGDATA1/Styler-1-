package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

public class CosmeticDAO {

	
	private ResultSet rs;
	private Connection conn;
	private PreparedStatement psmt;
	
	private void getConnection() {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			
			conn = DriverManager.getConnection(db_url,db_id, db_pw);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	private void close() {
		
		 try {
             if (rs != null) {
                rs.close();
             }
             if (psmt != null) {
                psmt.close();
             }
             if (conn != null) {
                conn.close();
             }
          } catch (SQLException e) {
             e.printStackTrace();
          }
       }
		
	public int add(CosmeticDTO dto) {
		
		// 회원가입 DB 처리부분
		int cnt = 0;

		try {
			
			getConnection();

			String sql = "INSERT INTO MYPOUCH(PCH_NAME, BRAND, COLOR, PART, PARTTYPE, OPENDATE) VALUES(?,?,?,?,?,?,?,?,?)";
			
			psmt = conn.prepareStatement(sql);
			//psmt.setString(1, dto.getName());       //USER ID
			psmt.setString(1, dto.getPch_name());
			psmt.setString(2, dto.getBrand());
			psmt.setString(3, dto.getColor());
			//psmt.setString(5, dto.get());        // PERFORMANCE DB
			//psmt.setString(6, dto.get());		 // PTYPE DB
			//psmt.setString(7, dto.getTone());     // PERL DB
			psmt.setString(4, dto.getPart());
			psmt.setString(5, dto.getParttype());
			psmt.setString(6, dto.getOpendate());
			//psmt.setString(8, dto.get());         //VOLUME DB
			//psmt.setString(9, dto.get());			//KEYWORD DB
			cnt = psmt.executeUpdate();
			
			String sql = "INSERT INTO MYPOUCH(PERFO, PTYPE, PERR, VOLUME, KEYWORD) SELECT PERFO, PTYPE, PERR, VOLUME, KEYWORD FROM COSMETIC WHERE MYPOUCH.PCH_NAME = COSMETIC.PCH_NAME)";

		} catch (SQLException e) {
			e.printStackTrace();
			
		}finally { 
				close();
		}
		return cnt;
	}
	
}
