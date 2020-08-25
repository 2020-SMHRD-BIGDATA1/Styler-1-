package com.model;

public class communityDTO {

	private String title;
	private String content;
	private String member_ID;
	private String hits;
	private String recom;
	private int COMM_NUM;
	private String COM_DATE;
	
	
	
	
	public communityDTO(int COMM_NUM, String title, String content) {
		super();
		this.COMM_NUM = COMM_NUM;
		this.title = title;
		this.content = content;
	}


	public communityDTO(String title, String content, String member_ID, String hits, String recom, int COMM_NUM,
			String COM_DATE) {
		super();
		this.title = title;
		this.content = content;
		this.member_ID = member_ID;
		this.hits = hits;
		this.recom = recom;
		this.COMM_NUM = COMM_NUM;
		COM_DATE = COM_DATE;
	}


	public communityDTO(int COMM_NUM, String title, String content, String cOM_DATE, String member_ID) {
		super();
		this.title = title;
		this.content = content;
		this.member_ID = member_ID;
		this.COMM_NUM = COMM_NUM;
		COM_DATE = cOM_DATE;
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


	public int getCOMM_NUM() {
		return COMM_NUM;
	}


	public void setCOMM_NUM(int cOMM_NUM) {
		COMM_NUM = cOMM_NUM;
	}


	public String getCOM_DATE() {
		return COM_DATE;
	}


	public void setCOM_DATE(String cOM_DATE) {
		COM_DATE = cOM_DATE;
	}
	


	
	
}
