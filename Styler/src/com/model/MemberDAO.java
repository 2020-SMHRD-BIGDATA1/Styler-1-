package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	
	//Ŭ���� �ٷ� �Ʒ� field
	
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
		
	public int join(MemberDTO dto) {
		
		// ȸ������ DB ó���κ�
		int cnt = 0;

		try {
			
			getConnection();

			String sql = "INSERT INTO MEMBER VALUES(?,?,?,?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getName());
			psmt.setString(2, dto.getId());
			psmt.setString(3, dto.getPw());
			psmt.setString(4, dto.getTel());
			psmt.setString(5, dto.getBirthday());
			psmt.setString(6, dto.getSex());
			psmt.setString(7, dto.getTone());
			psmt.setString(8, dto.getSkintype());
			psmt.setString(9, dto.getSkinproblem());
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}finally { 
				close();
		}
		return cnt;
	}

	public MemberDTO login(MemberDTO dto) {
		
		MemberDTO info = null;
		
		// ��������, ���value, �ʵ�
		
		try {
			
			getConnection();
			
			String sql = "SELECT * FROM MEMBER WHERE ID = ? AND PW = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId()); // get.�Ķ���Ͱ� �ƴ϶� dto���� ��������
			psmt.setString(2, dto.getPw());
			rs = psmt.executeQuery();
			
			 if (rs.next()) {
                 System.out.println("�α��� ����");
                 String name = rs.getString(1);
     			 String id = rs.getString(2);
     			 String pw = rs.getString(3);
     			 String tel = rs.getString(4);
     			 String birthday = rs.getString(5);
     			 String sex = rs.getString(6);
     			 String tone = rs.getString(7);
     			 String skintype = rs.getString(8);
     			 String skinproblem = rs.getString(9);

     			 info = new MemberDTO(name, id, pw, tel, birthday, sex, tone, skintype, skinproblem);
                 System.out.println(info);
              } else {
                 System.out.println("�α��� ����");
              }
			
		}  catch (SQLException e) {
			e.printStackTrace();
			
		 } finally {
			 close();
		 }
            
          // �α��� DB ���� �κ�
    return info;
 }
	


}
