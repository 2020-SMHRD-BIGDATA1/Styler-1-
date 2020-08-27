package com.model;

public class VideoDTO {
	private String tag;
	private String title;
	private String url;
	private String use;
	public VideoDTO(String tag, String title, String url, String use) {
		super();
		this.tag = tag;
		this.title = title;
		this.url = url;
		this.use = use;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getUse() {
		return use;
	}
	public void setUse(String use) {
		this.use = use;
	}
	
	
}
