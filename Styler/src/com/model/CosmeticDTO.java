package com.model;

public class CosmeticDTO {

	private String pch_name;
	private String part;
	private String parttype;
	private String brand;
	private String color;
	private String opendate;
	
	public CosmeticDTO(String pch_name, String part, String parttype, String brand, String color, String opendate) {
		super();
		this.pch_name = pch_name;
		this.part = part;
		this.parttype = parttype;
		this.brand = brand;
		this.color = color;
		this.opendate = opendate;
	}
	
	public String getPart() {
		return part;
	}

	public void setPart(String Part) {
		this.part = part;
	}

	public String getPch_name() {
		return pch_name;
	}

	public void setPch_name(String pch_name) {
		this.pch_name = pch_name;
	}

	public String getParttype() {
		return parttype;
	}

	public void setParttype(String parttype) {
		this.parttype = parttype;
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

	public String getOpendate() {
		return opendate;
	}

	public void setOpendate(String opendate) {
		this.opendate = opendate;
	}
	
	
}
