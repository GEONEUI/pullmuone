package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class BoardPlusDAO {

	String id = "root";
	String pw = "xptmxm12!";
	String url = "jdbc:mariadb://183.111.138.245:3306/dbrjsdml";

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

	// 드라이버 연결
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

	// 댓글작성
	public void boardPlusInsert(BoardPlusDTO plus) {
		
		int ref = plus.getRef();
		
		getConnet();	
		
		try {
			//쿼리문작성
			String sql = "insert into boardplus values(null, ?, ?, sysdate(), ?, ?)";
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
	
	
	//써져있는 댓글 가져오기
	public Vector<BoardPlusDTO> selectOnePlus(int num) {
		Vector<BoardPlusDTO> v = new Vector<>();
		
		
		getConnet();
		
		try {
			//쿼리문작성
			String sql = "select * from boardplus where ref = ? order by num desc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BoardPlusDTO pdto = new BoardPlusDTO();
				pdto.setNum(rs.getInt(1));
				pdto.setWriter(rs.getString(2));
				pdto.setPassword(rs.getString(3));
				pdto.setReg_date(rs.getDate(4).toString());
				pdto.setRef(rs.getInt(5));
				pdto.setContext(rs.getString(6));
				
				v.add(pdto);
				
			}
			
			
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return v;
	}

}
