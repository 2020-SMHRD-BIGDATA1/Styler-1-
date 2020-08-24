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
			String sql = "INSERT INTO COMMUNITYS VALUES (MSG_NUM.NEXTVAL, ?, ?,SYSDATE, ?)";
			pst = conn.prepareStatement(sql);
			pst.setString(1, dto.getTitle());
			pst.setString(2, dto.getContent());
			pst.setString(3, dto.getMember_ID());
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
		String sql = "SELECT * FROM COMMUNITYS ORDER BY COM_DATE";
		ArrayList<communityDTO> list = new ArrayList<communityDTO>();
		try {
			pst = conn.prepareStatement(sql);
			//pst.setInt(1, 10 - (pageNumber - 1) * 10);
			rs = pst.executeQuery();
			while (rs.next()) {
				communityDTO comm_dto = new communityDTO(pageNumber, sql, sql, sql, sql);
				comm_dto.setCOMM_NUM(rs.getInt(1));
				comm_dto.setTitle(rs.getString(2));
				comm_dto.setContent(rs.getString(3));
				comm_dto.setCOM_DATE(rs.getString(4));
				comm_dto.setMember_ID(rs.getString(5));
				/*
				 * COMM_NUM NUMBER, TITLE VARCHAR2(100) NOT NULL, CONTENT VARCHAR2(2048) NOT
				 * NULL, COM_DATE DATE, MEMBER_ID VARCHAR(100)
				 */
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
		String sql =  "select * from (select * from communitys where COMM_NUM < ? order by COMM_NUM desc) where rownum <= 10";
		communityDTO comm_dto = new communityDTO(pageNumber, sql, sql, sql, sql);
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, 10 - (pageNumber - 1) * 10);
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
	
		public int update(int COMM_NUM, String title, String content) {
		
			getConnection();
			try {
				String sql = "UPDATE COMMUNITYS SET TITLE = ?, CONTENT = ? WHERE COMM_NUM = ?";
				pst = conn.prepareStatement(sql);
				pst.setString(1, title);
				pst.setString(2, content);
				pst.setInt(3, COMM_NUM);
				return pst.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return -1;
		}
		
		
		public int deleteAll(int COMM_NUM) {
			getConnection();
			int cnt = 0;
			String sql = "DELETE * FROM COMMUNITYS WHERE COMM_NUM = ?";
			
			try {
				pst = conn.prepareStatement(sql);
				pst.setInt(1, COMM_NUM);
				cnt= pst.executeUpdate();
				     
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
		
			return cnt;
		}
		
		public communityDTO getBbs(int bbsID) {
			getConnection();
			String sql = "SELECT * FROM COMMUNITYS WHERE MEMBER_ID = ?";
			try {
				PreparedStatement pst = conn.prepareStatement(sql);
				pst.setInt(1,  bbsID);
				rs = pst.executeQuery();
				if (rs.next()) {
					communityDTO comm_dto = new communityDTO(bbsID, sql, sql, sql, sql);
					comm_dto.setCOMM_NUM(rs.getInt(1));
					comm_dto.setTitle(rs.getString(2));
					comm_dto.setContent(rs.getString(3));
					comm_dto.setCOM_DATE(rs.getString(4));
					comm_dto.setMember_ID(rs.getString(5));
					return comm_dto;
				}
				}catch (SQLException e) {
					e.printStackTrace();
				} finally {
					close();
				}return null;
		}
				
					
			public int updateHits(int no) throws Exception {

				int result = 0;

					try {
						getConnection();
					String sql = "update board " + "set HITS = HITS + 1" + "where COMM_NUM=?";
					pst = conn.prepareStatement(sql);
					pst.setInt(1, no);

					result = pst.executeUpdate();
					System.out.println("조회수 1 증가");

					} catch (Exception e) {
					e.printStackTrace();
					throw new Exception("오류 발생");
					} finally {
						close();
					}
					System.out.println("조회수 결과" + result);
					return result;
					}
			}


	
	
