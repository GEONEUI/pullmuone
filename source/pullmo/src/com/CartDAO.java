package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CartDAO {
	
	String id = "java";
	String pw = "mysql";
	String url = "jdbc:mysql://localhost:3306/fullmo";
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;	
	
	
	//드라이버 연결
	public void getConnet() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("드라이브로드");
			conn = DriverManager.getConnection(url, id, pw);
			System.out.println("디비연결");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	
	//선택유저삭제
	public void deleteCart(int num) {
		try {
			getConnet();
			//쿼리문 작성
			String sql = "delete from cart where num = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	//선택한유저보기
	public CartDTO selectOne(String id) {
		CartDTO dto = new CartDTO();
		try {
			getConnet();
			//쿼리문 작성
			String sql = "select * from users where user_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto.setNum(rs.getInt(1));
				dto.setUser_id(rs.getString(2));
			}
			conn.close();
		} catch (Exception e) {}
		
		return dto;
	}
	
		
	public static void main(String [] args) {
		CartDAO a = new CartDAO();
		a.getConnet();
	}
	
	
}
