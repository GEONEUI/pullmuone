package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class CartDAO {
	
	String id = "root";
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
	public void deleteCart(int num, String user_id) {
		try {
			getConnet();
			//쿼리문 작성
			String sql = "delete from cart where num = ? and user_id = '?'";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, user_id);
			pstmt.executeUpdate();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	//선택한유저보기
	public  Vector<CartDTO> selectOne(String id) {
		 Vector<CartDTO> list = new Vector<>();
		try {
			getConnet();
			//쿼리문 작성
			String sql = "select A.num, A.user_id, B.category,  B.name,  B.info,  B.price,  B.mainimg, B.subimg\r\n" + 
					"from cart A\r\n" + 
					"left outer join product B\r\n" + 
					"on B.num = A.num\r\n" + 
					"where user_id = ? ;";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CartDTO dto = new CartDTO();
				dto.setNum(rs.getInt(1));
				dto.setUser_id(rs.getString(2));
				dto.setCategory(rs.getString(3));
				dto.setName(rs.getString(4));
				dto.setInfo(rs.getString(5));
				dto.setPrice(rs.getInt(6));
				dto.setMainimg(rs.getString(7));
				dto.setSubimg(rs.getString(8));
				
				list.add(dto);
			}
			conn.close();
		} catch (Exception e) {}
		return list;
	}	

	
	public CartDTO selecttwo(String id) {
		CartDTO dto = new CartDTO();
		try {
			getConnet();
			//쿼리문 작성
			String sql = "select * from cart where user_id = ?";
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
