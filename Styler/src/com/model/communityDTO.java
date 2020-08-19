package com.model;

public class communityDTO {

	private int COMM_NUM;
	private String title;
	private String content;
	private String member_ID;
	private String hits;
	private String recom;
	private String COM_DATE;
	
	

	
	public communityDTO() {
		super();
	}

	public communityDTO(String title, String content) {
		super();
		this.title = title;
		this.content = content;
	}
	
	public int getCOMM_NUM() {
		return COMM_NUM;
	}
	public void setCOMM_NUM(int COMM_NUM) {
		this.COMM_NUM = COMM_NUM;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getMember_ID() {
		return member_ID;
	}
	public void setMember_ID(String member_ID) {
		this.member_ID = member_ID;
	}
	public String getHits() {
		return hits;
	}
	public void setHits(String hits) {
		this.hits = hits;
	}
	public String getRecom() {
		return recom;
	}
	public void setRecom(String recom) {
		this.recom = recom;
	}
	public String getCOM_DATE() {
		return COM_DATE;
	}
	public void setCOM_DATE(String COM_DATE) {
		this.COM_DATE = COM_DATE;
	}
	
	
	
	
}
