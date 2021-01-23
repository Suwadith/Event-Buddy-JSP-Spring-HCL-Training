package com.eb.model;

public class Customer {

	private int customer_id;
	private String first_name;
	private String last_name;
	private String email;
	private String mobile;
	private String nic_no;
	private User user;
	
	public Customer() {}

	public Customer(int customer_id, String first_name, String last_name, String email, String mobile, String nic_no) {
		super();
		this.customer_id = customer_id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
		this.mobile = mobile;
		this.nic_no = nic_no;
	}

	public Customer(int customer_id, String first_name, String last_name, String email, String mobile, String nic_no,
			User user) {
		super();
		this.customer_id = customer_id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
		this.mobile = mobile;
		this.nic_no = nic_no;
		this.user = user;
	}

	public int getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
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

	public String getNic_no() {
		return nic_no;
	}

	public void setNic_no(String nic_no) {
		this.nic_no = nic_no;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
}
