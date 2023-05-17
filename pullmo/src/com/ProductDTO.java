package com;

public class ProductDTO {
	private int num;
	private String category;
	private String name;
	private String info;
	private int price;
	private String mainimg;
	private String subimg;
	
	public ProductDTO() {}

	public ProductDTO(int num, String category, String name, String info, int price, String mainimg, String subimg) {
		this.num = num;
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

	@Override
	public String toString() {
		return "ProductDTO [num=" + num + ", category=" + category + ", name=" + name + ", info=" + info + ", price="
				+ price + ", mainimg=" + mainimg + ", subimg=" + subimg + "]";
	}
	
}


