package com.eb.model;

public class Owner {
	private int owner_id;
	private String first_name;
	private String last_name;
	private String email;
	private String mobile;
	private String br_no;
	private User user;
	
	public Owner() {}
	
	

	public Owner(int owner_id, String first_name, String last_name, String email, String mobile, String br_no) {
		super();
		this.owner_id = owner_id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
		this.mobile = mobile;
		this.br_no = br_no;
	}


	public Owner(int owner_id, String first_name, String last_name, String email, String mobile, String br_no,
			User user) {
		super();
		this.owner_id = owner_id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
		this.mobile = mobile;
		this.br_no = br_no;
		this.user = user;
	}

	public int getOwner_id() {
		return owner_id;
	}

	public void setOwner_id(int owner_id) {
		this.owner_id = owner_id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getBr_no() {
		return br_no;
	}

	public void setBr_no(String br_no) {
		this.br_no = br_no;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
}
