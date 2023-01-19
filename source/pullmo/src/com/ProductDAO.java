package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import jdk.internal.dynalink.support.TypeUtilities;

public class ProductDAO {
	
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
	//장바구니 추가버튼
	public void productInsert(CartDTO cartDTO) {
		try {
			getConnet();
			//쿼리문 작성
			String sql = "insert into cart value(?, ?)";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,cartDTO.getNum() );
			pstmt.setString(2, cartDTO.getUser_id());
			pstmt.executeUpdate();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	//모든회원조회
		public Vector<ProductDTO> selectAll() {
			Vector<ProductDTO> list = new Vector<>();
			try {
				getConnet();
				//쿼리문 작성
				String sql = "select * from product";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					ProductDTO dto = new ProductDTO();
					dto.setNum(rs.getInt(1));
					dto.setCategory(rs.getString(2));
					dto.setName(rs.getString(3));
					dto.setInfo(rs.getString(4));
					dto.setPrice(rs.getInt(5));
					dto.setMainimg(rs.getString(6));
					dto.setSubimg(rs.getString(7));
					
					list.add(dto);
					
					
				}
				
				conn.close();
			} catch (Exception e) {
				// TODO: handle exception
			}
			return list;
		}
	
	public static void main(String [] args) {
		ProductDAO a = new ProductDAO();
		a.getConnet();
	}
}
