package com.eb.model;

public class Hall {

	private int hall_id;
	private String hall_name;
	private String hall_type;
	private String hall_location;
	private String hall_contact;
	private int no_of_seats;
	private Owner owner;
	
	public Hall() {}
	
	

	public Hall(int hall_id, String hall_name, String hall_type, String hall_location, String hall_contact,
			int no_of_seats) {
		super();
		this.hall_id = hall_id;
		this.hall_name = hall_name;
		this.hall_type = hall_type;
		this.hall_location = hall_location;
		this.hall_contact = hall_contact;
		this.no_of_seats = no_of_seats;
	}


	public Hall(int hall_id, String hall_name, String hall_type, String hall_location, String hall_contact,
			int no_of_seats, Owner owner) {
		super();
		this.hall_id = hall_id;
		this.hall_name = hall_name;
		this.hall_type = hall_type;
		this.hall_location = hall_location;
		this.hall_contact = hall_contact;
		this.no_of_seats = no_of_seats;
		this.owner = owner;
	}

	public int getHall_id() {
		return hall_id;
	}

	public void setHall_id(int hall_id) {
		this.hall_id = hall_id;
	}

	public String getHall_name() {
		return hall_name;
	}

	public void setHall_name(String hall_name) {
		this.hall_name = hall_name;
	}

	public String getHall_type() {
		return hall_type;
	}

	public void setHall_type(String hall_type) {
		this.hall_type = hall_type;
	}

	public String getHall_location() {
		return hall_location;
	}

	public void setHall_location(String hall_location) {
		this.hall_location = hall_location;
	}

	public String getHall_contact() {
		return hall_contact;
	}

	public void setHall_contact(String hall_contact) {
		this.hall_contact = hall_contact;
	}

	public int getNo_of_seats() {
		return no_of_seats;
	}

	public void setNo_of_seats(int no_of_seats) {
		this.no_of_seats = no_of_seats;
	}

	public Owner getOwner() {
		return owner;
	}

	public void setOwner(Owner owner) {
		this.owner = owner;
	}
}
