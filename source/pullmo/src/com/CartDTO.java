package com;

public class CartDTO {
	private int num;
	private int pricenum;
	private String user_id;
	private String category;
	private String name;
	private String info;
	private int price;
	private String mainimg;
	private String subimg;
	
	
	public CartDTO() {}
	
	public CartDTO(int num, int pricenum, String user_id) {
		this.num = num;
		this.pricenum = pricenum;
		this.user_id = user_id;
	}

	public CartDTO(int num, int pricenum, String user_id, String category, String name, String info, int price,
			String mainimg, String subimg) {
		super();
		this.num = num;
		this.pricenum = pricenum;
		this.user_id = user_id;
		this.category = category;
		this.name = name;
		this.info = info;
		this.price = price;
		this.mainimg = mainimg;
		this.subimg = subimg;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getPricenum() {
		return pricenum;
	}

	public void setPricenum(int pricenum) {
		this.pricenum = pricenum;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getMainimg() {
		return mainimg;
	}

	public void setMainimg(String mainimg) {
		this.mainimg = mainimg;
	}

	public String getSubimg() {
		return subimg;
	}

	public void setSubimg(String subimg) {
		this.subimg = subimg;
	}
	
	
	
	
	
	
	

	
	
	
}


