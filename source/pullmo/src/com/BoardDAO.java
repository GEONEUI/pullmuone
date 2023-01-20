package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class BoardDAO {

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
		
		//게시글 디비에 넣기
		public void boardInsert(BoardDTO been) {
			getConnet();
			int ref = 0;
			int re_step = 1;
			int re_level = 1;
			try {
				String refsql = "select max(ref) from board";
				pstmt = conn.prepareStatement(refsql);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					ref = rs.getInt(1) + 1;
				}

				//쿼리문작성
				String sql = "insert into board values(null, ?, ?, ?, ?, sysdate(), ?, ?, ?, 0, ?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, been.getWriter());
				pstmt.setString(2, been.getEmail());
				pstmt.setString(3, been.getSubject());
				pstmt.setString(4, been.getPassword());
				pstmt.setInt(5, ref);
				pstmt.setInt(6, re_step);
				pstmt.setInt(7, re_level);
				pstmt.setString(8, been.getContext());
				pstmt.executeUpdate();
				
				conn.close();
				
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		
		//게시글 가져오기
		public Vector<BoardDTO> selectAllBoard() {
			Vector<BoardDTO> v = new Vector<>();
			getConnet();
			try {
				//쿼리문작성
				String sql = "select * from board order by ref desc, re_level asc";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					BoardDTO dto = new BoardDTO();
					dto.setNum(rs.getInt(1));
					dto.setWriter(rs.getString(2));
					dto.setEmail(rs.getString(3));
					dto.setSubject(rs.getString(4));
					dto.setPassword(rs.getString(5));
					dto.setReg_date(rs.getDate(6).toString());
					dto.setRef(rs.getInt(7));
					dto.setRe_step(rs.getInt(8));
					dto.setRe_level(rs.getInt(9));
					dto.setReadcount(rs.getInt(10));
					dto.setContext(rs.getString(11));
					
					v.add(dto);
				}
				
				conn.close();
			} catch (Exception e) {
				// TODO: handle exception
			}
			
			return v;
		}
		
		//선택한 게시글만 가져오기
		public BoardDTO boardSelectOne(int num) {
			BoardDTO bdto = new BoardDTO();
			getConnet();
			
			try {
				//조회수커리문작성
				String readsql = "update board set readcount = readcount + 1 where num = ?";
				pstmt = conn.prepareStatement(readsql);
				pstmt.setInt(1, num);
				pstmt.executeUpdate();
				
				//쿼리문작성
				String sql = "select * from board where num = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, num);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					bdto.setNum(rs.getInt(1));
					bdto.setWriter(rs.getString(2));
					bdto.setEmail(rs.getString(3));
					bdto.setSubject(rs.getString(4));
					bdto.setPassword(rs.getString(5));
					bdto.setReg_date(rs.getDate(6).toString());
					bdto.setRef(rs.getInt(7));
					bdto.setRe_step(rs.getInt(8));
					bdto.setRe_level(rs.getInt(9));
					bdto.setReadcount(rs.getInt(10));
					bdto.setContext(rs.getString(11));
				}
				
				conn.close();
			} catch (Exception e) {
				e.fillInStackTrace();
			}
			
			
			return bdto;
		}
		
		
		//게시판제거
		public void boardRemove(int num) {
			getConnet();
			
			try {
				String sql = "delete from board where num = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, num);
				pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		//게시판 업데이트
		public void boardUpdate(BoardDTO been) {
			getConnet();
			
			try {
				String sql = "update board set context = ?, subject = ? where num = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, been.getContext());
				pstmt.setString(2, been.getSubject());
				pstmt.setInt(3, been.getNum());
				pstmt.executeUpdate();
				
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		
		public static void main(String [] args) {
			UserDAO a = new UserDAO();
			a.getConnet();
		}
		
		
}
