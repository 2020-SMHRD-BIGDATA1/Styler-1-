package com.model;

public class MakeupInfoDTO {
	private String situation;
	private String tone;
	private String homecomming;
	public MakeupInfoDTO(String situation, String tone, String homecomming) {
		super();
		this.situation = situation;
		this.tone = tone;
		this.homecomming = homecomming;
	}
	public String getSituation() {
		return situation;
	}
	public void setSituation(String situation) {
		this.situation = situation;
	}
	public String getTone() {
		return tone;
	}
	public void setTone(String tone) {
		this.tone = tone;
	}
	public String getHomecomming() {
		return homecomming;
	}
	public void setHomecomming(String homecomming) {
		this.homecomming = homecomming;
	}
	
	
	
}
