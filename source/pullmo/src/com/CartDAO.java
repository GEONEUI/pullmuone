package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import jdk.internal.dynalink.support.TypeUtilities;

public class CartDAO {
	
	String id = "java";
	String pw = "mysql";
	String url = "jdbc:mysql://localhost:3306/pulmoo";
	
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
			String sql = "select A.num, A.priceNum, A.user_id, B.category,  B.name,  B.info,  B.price,  B.mainimg, B.subimg\r\n" + 
					"					from cart A\r\n" + 
					"				left outer join product B\r\n" + 
					"					on B.num = A.num\r\n" + 
					"					where user_id = ? ;";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CartDTO dto = new CartDTO();
				dto.setNum(rs.getInt(1));
				dto.setPricenum(rs.getInt(2));
				dto.setUser_id(rs.getString(3));
				dto.setCategory(rs.getString(4));
				dto.setName(rs.getString(5));
				dto.setInfo(rs.getString(6));
				dto.setPrice(rs.getInt(7));
				dto.setMainimg(rs.getString(8));
				dto.setSubimg(rs.getString(9));
				
				list.add(dto);
			}
			conn.close();
		} catch (Exception e) {}
		return list;
	}	

	//선택한 아이디가 가지고있는 최종정보를 삽입
	public void cartInsert(int num , int priceNum, String user_id) {
		
		getConnet();
		try {
			//쿼리문 작성
			String sql = "insert into cart values (?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setInt(2, priceNum);
			pstmt.setString(3,user_id);
			pstmt.executeUpdate();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
					
	}
	
			
	public static void main(String [] args) {
		CartDAO a = new CartDAO();
		a.getConnet();
	}
		
}
