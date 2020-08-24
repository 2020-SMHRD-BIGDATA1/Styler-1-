package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
		
	public int add(String memberid, CosmeticDTO dto) {
		
		// 회원가입 DB 처리부분 
		int cnt2 = 0;
		int cnt3 = 0;
		int cnt4 = 0;
		try {
			
			getConnection();

			String sql = "INSERT INTO MYPOUCH(ID, PCH_NAME, BRAND, COLOR, PART, PARTTYPE, OPENDATE) VALUES(?,?,?,?,?,?,?,?,?,?)";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, memberid);       //USER ID
			psmt.setString(2, dto.getPch_name());
			psmt.setString(3, dto.getBrand());
			psmt.setString(4, dto.getColor());
			//psmt.setString(5, dto.get());        // PERFORMANCE DB
			//psmt.setString(6, dto.get());		 // PTYPE DB
			//psmt.setString(7, dto.getTone());     // PERL DB
			psmt.setString(5, dto.getPart());
			psmt.setString(6, dto.getParttype());
			psmt.setString(7, dto.getOpendate());
			//psmt.setString(8, dto.get());         //VOLUME DB
			//psmt.setString(9, dto.get());			//KEYWORD DB
			cnt2 = psmt.executeUpdate();
			
			String sql2 = "INSERT INTO MYPOUCH(PERFO, PTYPE, PERR, VOLUME, KEYWORD) SELECT PERFO, PTYPE, PERR, VOLUME, KEYWORD FROM COSMETIC WHERE MYPOUCH.PCH_NAME = COSMETIC.PCH_NAME";
			psmt = conn.prepareStatement(sql2);
			cnt3 = psmt.executeUpdate();
			cnt4 = cnt2 * cnt3;
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}finally { 
				close();
		}
		return cnt4;
	}
	
	public ArrayList<CosmeticDTO> makebaseList (String id){
		getConnection();
		String sql = "SELECT * FROM MYPOUCH WHERE ID=?, PART='base' ORDERBY PARTTYPE";
		ArrayList<CosmeticDTO> list = new ArrayList<CosmeticDTO>();
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			
			rs = psmt.executeQuery();
			while (rs.next()) {
				CosmeticDTO cosmetic_dto = new CosmeticDTO();
				cosmetic_dto.setPch_name(rs.getString(2));
				cosmetic_dto.setPrice(rs.getString(3));
				cosmetic_dto.setBrand(rs.getString(4));
				cosmetic_dto.setColor(rs.getString(5));
				cosmetic_dto.setPtype(rs.getString(7));
				cosmetic_dto.setPerr(rs.getString(8));
				cosmetic_dto.setPart(rs.getString(9));
				cosmetic_dto.setParttype(rs.getString(10));
				cosmetic_dto.setOpendate(rs.getString(11));
				cosmetic_dto.setVolume(rs.getString(12));
				cosmetic_dto.setKeyword(rs.getString(13));
																		/*
																		 * ID VARCHAR2(100),
															PCH_NAME VARCHAR2(100),
															PRICE VARCHAR2(100),
															BRAND VARCHAR2(100),
															COLOR VARCHAR2(100),
															PERFO VARCHAR2(100),
															PTYPE VARCHAR2(100),
															PERR VARCHAR2(100),
															PART VARCHAR2(100),
															PARTTYPE VARCHAR2(100),
															OPENDATE VARCHAR2(100),
															VOLUME VARCHAR2(100),
															KEYWORD VARCHAR2(200),
																		 */
				list.add(cosmetic_dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	public ArrayList<CosmeticDTO> makeeyeList (String id){
		getConnection();
		String sql = "SELECT * FROM MYPOUCH WHERE ID=?, PART='eye' ORDERBY PARTTYPE";
		ArrayList<CosmeticDTO> list = new ArrayList<CosmeticDTO>();
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			psmt.setString(1, id);
			
			rs = pst.executeQuery();
			while (rs.next()) {
				CosmeticDTO cosmetic_dto = new CosmeticDTO();
				cosmetic_dto.setPch_name(rs.getString(2));
				cosmetic_dto.setPrice(rs.getString(3));
				cosmetic_dto.setBrand(rs.getString(4));
				cosmetic_dto.setColor(rs.getString(5));
				cosmetic_dto.setPtype(rs.getString(7));
				cosmetic_dto.setPerr(rs.getString(8));
				cosmetic_dto.setPart(rs.getString(9));
				cosmetic_dto.setParttype(rs.getString(10));
				cosmetic_dto.setOpendate(rs.getString(11));
				cosmetic_dto.setVolume(rs.getString(12));
				cosmetic_dto.setKeyword(rs.getString(13));
																		/*
																		 * ID VARCHAR2(100),
															PCH_NAME VARCHAR2(100),
															PRICE VARCHAR2(100),
															BRAND VARCHAR2(100),
															COLOR VARCHAR2(100),
															PERFO VARCHAR2(100),
															PTYPE VARCHAR2(100),
															PERR VARCHAR2(100),
															PART VARCHAR2(100),
															PARTTYPE VARCHAR2(100),
															OPENDATE VARCHAR2(100),
															VOLUME VARCHAR2(100),
															KEYWORD VARCHAR2(200),
																		 */
				list.add(cosmetic_dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	public ArrayList<CosmeticDTO> makelipList (String id){
		getConnection();
		String sql = "SELECT * FROM MYPOUCH WHERE ID=?, PART='lip' ORDERBY PARTTYPE";
		ArrayList<CosmeticDTO> list = new ArrayList<CosmeticDTO>();
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			psmt.setString(1, id);
			
			rs = pst.executeQuery();
			while (rs.next()) {
				CosmeticDTO cosmetic_dto = new CosmeticDTO();
				cosmetic_dto.setPch_name(rs.getString(2));
				cosmetic_dto.setPrice(rs.getString(3));
				cosmetic_dto.setBrand(rs.getString(4));
				cosmetic_dto.setColor(rs.getString(5));
				cosmetic_dto.setPtype(rs.getString(7));
				cosmetic_dto.setPerr(rs.getString(8));
				cosmetic_dto.setPart(rs.getString(9));
				cosmetic_dto.setParttype(rs.getString(10));
				cosmetic_dto.setOpendate(rs.getString(11));
				cosmetic_dto.setVolume(rs.getString(12));
				cosmetic_dto.setKeyword(rs.getString(13));
																		/*
																		 * ID VARCHAR2(100),
															PCH_NAME VARCHAR2(100),
															PRICE VARCHAR2(100),
															BRAND VARCHAR2(100),
															COLOR VARCHAR2(100),
															PERFO VARCHAR2(100),
															PTYPE VARCHAR2(100),
															PERR VARCHAR2(100),
															PART VARCHAR2(100),
															PARTTYPE VARCHAR2(100),
															OPENDATE VARCHAR2(100),
															VOLUME VARCHAR2(100),
															KEYWORD VARCHAR2(200),
																		 */
				list.add(cosmetic_dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	public ArrayList<CosmeticDTO> makecontourList (String id){
		getConnection();
		String sql = "SELECT * FROM MYPOUCH WHERE ID=?, PART='contouri' ORDERBY PARTTYPE";
		ArrayList<CosmeticDTO> list = new ArrayList<CosmeticDTO>();
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			psmt.setString(1, id);
			
			rs = pst.executeQuery();
			while (rs.next()) {
				CosmeticDTO cosmetic_dto = new CosmeticDTO();
				cosmetic_dto.setPch_name(rs.getString(2));
				cosmetic_dto.setPrice(rs.getString(3));
				cosmetic_dto.setBrand(rs.getString(4));
				cosmetic_dto.setColor(rs.getString(5));
				cosmetic_dto.setPtype(rs.getString(7));
				cosmetic_dto.setPerr(rs.getString(8));
				cosmetic_dto.setPart(rs.getString(9));
				cosmetic_dto.setParttype(rs.getString(10));
				cosmetic_dto.setOpendate(rs.getString(11));
				cosmetic_dto.setVolume(rs.getString(12));
				cosmetic_dto.setKeyword(rs.getString(13));
																		/*
																		 * ID VARCHAR2(100),
															PCH_NAME VARCHAR2(100),
															PRICE VARCHAR2(100),
															BRAND VARCHAR2(100),
															COLOR VARCHAR2(100),
															PERFO VARCHAR2(100),
															PTYPE VARCHAR2(100),
															PERR VARCHAR2(100),
															PART VARCHAR2(100),
															PARTTYPE VARCHAR2(100),
															OPENDATE VARCHAR2(100),
															VOLUME VARCHAR2(100),
															KEYWORD VARCHAR2(200),
																		 */
				list.add(cosmetic_dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
}
