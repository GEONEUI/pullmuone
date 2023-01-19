package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BoardPlusDAO {

	String id = "java";
	String pw = "mysql";
	String url = "jdbc:mysql://localhost:3306/pulmoo";

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

	// 드라이버 연결
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

	// 댓글작성
	public void boardPlusInsert(BoardPlusDTO plus) {
		
		int ref = plus.getRef();
		
		getConnet();	
		
		try {
			//쿼리문작성
			String sql = "insert into board values(null, ?, ?, sysdate(), ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, plus.getWriter());
			pstmt.setString(2, plus.getPassword());
			pstmt.setInt(3, ref);
			pstmt.setString(4, plus.getContext());
			pstmt.executeUpdate();
			
			
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
