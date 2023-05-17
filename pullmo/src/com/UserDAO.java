package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;


public class UserDAO {
	
	String id = "dbrjsdml";
	String pw = "xptmxm12!";
	String url = "jdbc:mariadb://183.111.138.245:3306/dbrjsdml";
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;	
	
	
	//드라이버 연결
	public void getConnet() {
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			System.out.println("드라이브로드");
			conn = DriverManager.getConnection(url, id, pw);
			System.out.println("디비연결");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	
	//회원가입
	public void Userinsert(UserDTO userbean) {
		try {
			getConnet();
			//쿼리문 작성
			String sql = "insert into users values(?, ?, ?, ?, ?)";
			
			
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userbean.getUser_id());
			pstmt.setString(2, userbean.getUser_pw());
			pstmt.setString(3, userbean.getUser_name());
			pstmt.setString(4, userbean.getUser_phone());
			pstmt.setString(5, userbean.getUser_email());
			pstmt.executeUpdate();
			
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	//모든회원조회
	public Vector<UserDTO> selectAll() {
		Vector<UserDTO> list = new Vector<>();
		try {
			getConnet();
			//쿼리문 작성
			String sql = "select * from users";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				UserDTO dto = new UserDTO();
				dto.setUser_id(rs.getString(1));
				dto.setUser_pw(rs.getString(2));
				dto.setUser_name(rs.getString(3));
				dto.setUser_phone(rs.getString(4));
				dto.setUser_email(rs.getString(5));
				
				list.add(dto);
				
				
			}
			
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return list;
	}
	
	
	//비밀번호 불러오기
	public String getPass(String id) {
		String pass = "";
		
		try {
			getConnet();
			//쿼리문 작성
			String sql = "select user_pw from users where user_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				pass = rs.getString(1);
			}
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}

		return pass;
	}
	
	
	//이메일 불러오기
	public String getEmail(String id) {
		String email = "";
		
		try {
			getConnet();
			//쿼리문 작성
			String sql = "select user_email from users where user_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				email = rs.getString(1);
			}
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}

		return email;
	}
	
	
	//유저정보변경
	public void updateUser(UserDTO userbean) {
		try {
			getConnet();
			//쿼리문 작성
			String sql = "update users set user_pw = ?, user_name=?, user_phone=?, user_email=? where user_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userbean.getUser_pw());
			pstmt.setString(2, userbean.getUser_name());
			pstmt.setString(3, userbean.getUser_phone());
			pstmt.setString(4, userbean.getUser_email());
			pstmt.setString(5, userbean.getUser_id());
			pstmt.executeUpdate();
			
			
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	//선택유저삭제
	public void deleteUser(String id) {
		try {
			getConnet();
			//쿼리문 작성
			String sql = "delete from users where user_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	//모든유저보기
	public Vector<UserDTO> userSelectAll() {
		Vector<UserDTO> userArr = new Vector<>();
		
		try {
			getConnet();
			//쿼리문 작성
			String sql = "select * from users";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				UserDTO dto = new UserDTO();
				dto.setUser_id(rs.getString(1));
				dto.setUser_pw(rs.getString(2));
				dto.setUser_name(rs.getString(3));
				dto.setUser_phone(rs.getString(4));
				dto.setUser_email(rs.getString(5));
				
				userArr.add(dto);
			}
			
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		return userArr;
	}
	
	
	//선택한유저보기
	public UserDTO selectOne(String id) {
		UserDTO dto = new UserDTO();
		try {
			getConnet();
			//쿼리문 작성
			String sql = "select * from users where user_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto.setUser_id(rs.getString(1));
				dto.setUser_pw(rs.getString(2));
				dto.setUser_name(rs.getString(3));
				dto.setUser_phone(rs.getString(4));
				dto.setUser_email(rs.getString(5));
			}
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return dto;
	}
	
	
	
	public static void main(String [] args) {
		UserDAO a = new UserDAO();
		a.getConnet();
	}
	
	
}
