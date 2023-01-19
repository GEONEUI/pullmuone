package com;

public class CartDTO {
	private int num;
	private String user_id;
	
	public CartDTO() {}

	public CartDTO(int num, String user_id) {
		this.num = num;
		this.user_id = user_id;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "CartDTO [num=" + num + ", user_id=" + user_id + "]";
	}

	
	
	
	
	
	
	
	
}


