package com.model;

public class CosmeticDTO {

	private String pch_name;
	private String price;
	private String brand;
	private String color;
	private String perfo;
	private String ptype;
	private String perr;
	private String part;
	private String parttype;
	private String volume;
	private String opendate;
	private String keyword;
	
	public CosmeticDTO(String pch_name, String brand, String color, String part, String parttype, String opendate) {
		this.pch_name = pch_name;
		this.brand = pch_name;
		this.color = color;
		this.part = part;
		this.parttype = parttype;
		this.opendate = opendate;
	}
	
	public CosmeticDTO() {
		super();
	}

	public CosmeticDTO(String pch_name, String price, String brand, String color, String perfo, String ptype,
			String perr, String part, String parttype, String volume, String opendate, String keyword) {
		super();
		this.pch_name = pch_name;
		this.price = price;
		this.brand = brand;
		this.color = color;
		this.perfo = perfo;
		this.ptype = ptype;
		this.perr = perr;
		this.part = part;
		this.parttype = parttype;
		this.volume = volume;
		this.opendate = opendate;
		this.keyword = keyword;
	}

	public String getPch_name() {
		return pch_name;
	}

	public void setPch_name(String pch_name) {
		this.pch_name = pch_name;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getPerfo() {
		return perfo;
	}

	public void setPerfo(String perfo) {
		this.perfo = perfo;
	}

	public String getPtype() {
		return ptype;
	}

	public void setPtype(String ptype) {
		this.ptype = ptype;
	}

	public String getPerr() {
		return perr;
	}

	public void setPerr(String perr) {
		this.perr = perr;
	}

	public String getPart() {
		return part;
	}

	public void setPart(String part) {
		this.part = part;
	}

	public String getParttype() {
		return parttype;
	}

	public void setParttype(String parttype) {
		this.parttype = parttype;
	}

	public String getVolume() {
		return volume;
	}

	public void setVolume(String volume) {
		this.volume = volume;
	}

	public String getOpendate() {
		return opendate;
	}

	public void setOpendate(String opendate) {
		this.opendate = opendate;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	
	
}