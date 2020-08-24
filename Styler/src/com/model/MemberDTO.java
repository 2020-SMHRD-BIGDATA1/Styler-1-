package com.model;

public class MemberDTO {
	
	private String name;
	private String id;
	private String pw;
	private String tel;
	private String birthday;
	private String sex;
	private String tone;
	private String skintype;
	private String skinproblem;
	

	
	public MemberDTO() {
		super();
	}

	public MemberDTO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}

	// �ߺ����� = �����ε�
	// ������ = �������̵�
	
	public MemberDTO(String name, String id, String pw, String tel, String birthday, String sex, String tone, String skintype,
			String skinproblem) {
		super();
		this.name = name;
		this.id = id;
		this.pw = pw;
		this.tel = tel;
		this.birthday = birthday;
		this.sex = sex;
		this.tone = tone;
		this.skintype = skintype;
		this.skinproblem = skinproblem;
	}

	public MemberDTO(String id, String pw, String tel) { 
		
		// ������ : ��ü ������ ����, Ư���� �޼ҵ�, �Ű����� �޾Ƽ� �ʵ带 �ʱ�ȭ��!

		this.id = id;
		this.pw = pw;
		this.tel = tel;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getTone() {
		return tone;
	}

	public void setTone(String tone) {
		this.tone = tone;
	}

	public String getSkintype() {
		return skintype;
	}

	public void setSkintype(String skintype) {
		this.skintype = skintype;
	}

	public String getSkinproblem() {
		return skinproblem;
	}

	public void setSkinproblem(String skinproblem) {
		this.skinproblem = skinproblem;
	}

	

}
