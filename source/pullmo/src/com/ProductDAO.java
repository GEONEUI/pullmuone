package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import jdk.internal.dynalink.support.TypeUtilities;

public class ProductDAO {
	
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
			conn = DriverManager.getConnection(url, id, pw);
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
	
	
		//모든상품가져오기
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
	
		
		
		//선택한 하나의 상품정보만 가져오기
	public ProductDTO productSelectOne(int num) {
		ProductDTO pdto = new ProductDTO();
		getConnet();
		
		try {
			//쿼리문작성
			String sql = "select * from product where num = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				pdto.setNum(rs.getInt(1));
				pdto.setCategory(rs.getString(2));
				pdto.setName(rs.getString(3));
				pdto.setInfo(rs.getString(4));
				pdto.setPrice(rs.getInt(5));
				pdto.setMainimg(rs.getString(6));
				pdto.setSubimg(rs.getString(7));
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	
		return pdto;
	}
	
	public static void main(String [] args) {
		ProductDAO a = new ProductDAO();
		Vector<ProductDTO> dd = a.selectAll();
		for(ProductDTO dto : dd) {
			System.out.println(dto);
		}
	}
}
