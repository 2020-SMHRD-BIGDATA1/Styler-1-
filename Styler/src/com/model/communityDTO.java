package com.model;

public class communityDTO {

	private String title;
	private String content;
	private String member_ID;
	private String hits;
	private String recom;
	private String COMM_NUM;
	private String COM_DATE;
	

	
	public communityDTO(String title, String content, String member_ID, String cOMM_NUM, String cOM_DATE) {
		super();
		this.title = title;
		this.content = content;
		this.member_ID = member_ID;
		COMM_NUM = cOMM_NUM;
		COM_DATE = cOM_DATE;
	}

	public String getCOMM_NUM() {
		return COMM_NUM;
	}

	public void setCOMM_NUM(String cOMM_NUM) {
		COMM_NUM = cOMM_NUM;
	}

	public String getCOM_DATE() {
		return COM_DATE;
	}

	public void setCOM_DATE(String cOM_DATE) {
		COM_DATE = cOM_DATE;
	}

	public communityDTO() {
		super();
	}

	public communityDTO(String title, String content) {
		super();
		this.title = title;
		this.content = content;
	}
	
	public communityDTO(String title, String content, String member_ID) {
		super();
		this.title = title;
		this.content = content;
		this.member_ID = member_ID;
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
	
	
	
	
}
