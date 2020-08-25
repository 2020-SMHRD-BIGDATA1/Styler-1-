package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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

			String sql = "INSERT INTO MOTDMEMBER VALUES(?,?,?,?,?,?,?,?,?)";
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
			
			String sql = "SELECT * FROM MOTDMEMBER WHERE ID = ? AND PW = ?";
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
     			 System.out.println("�ʳ�");
                 System.out.println(info.getName());
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
	
	public ArrayList<MemberDTO> getList (int Number){
		getConnection();
		String sql = "SELECT * FROM MOTDMEMBER";
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			// pst.setInt(1,  comm_dto.getCOMM_NUM() - (pageNumber - 1) * 10);
			rs = pst.executeQuery();
			while (rs.next()) {
				MemberDTO mem_dto = new MemberDTO();
				mem_dto.setName(rs.getString(1));
				mem_dto.setId(rs.getString(2));
				mem_dto.setPw(rs.getString(3));
				mem_dto.setTel(rs.getString(4));
				mem_dto.setBirthday(rs.getString(5));
				mem_dto.setSex(rs.getString(6));
				mem_dto.setTone(rs.getString(7));
				mem_dto.setSkintype(rs.getString(8));
				mem_dto.setSkinproblem(rs.getString(9));
				list.add(mem_dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	


}
