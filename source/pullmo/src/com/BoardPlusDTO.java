package com;

public class BoardPlusDTO {
	private int num;
	private String writer;
	private String password;
	private String reg_date;
	private int ref;
	private String context;
	
	
	public BoardPlusDTO() {
		
	}
	
	
	public BoardPlusDTO(int num, String writer, String password, String reg_date, int ref, String context) {
		this.num = num;
		this.writer = writer;
		this.password = password;
		this.reg_date = reg_date;
		this.ref = ref;
		this.context = context;
	}


	public int getNum() {
		return num;
	}


	public void setNum(int num) {
		this.num = num;
	}


	public String getWriter() {
		return writer;
	}


	public void setWriter(String writer) {
		this.writer = writer;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getReg_date() {
		return reg_date;
	}


	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}


	public int getRef() {
		return ref;
	}


	public void setRef(int ref) {
		this.ref = ref;
	}


	public String getContext() {
		return context;
	}


	public void setContext(String context) {
		this.context = context;
	}
	
	
	
	
	
}
