package com.eb.model;

import java.util.Date;

public class Event {

	private int event_id;
	private String event_name;
	private String event_type;
	private String event_description;
	private Date event_date;
	private Date start_time;
	private Date end_time;
	private double ticket_price;
	private String event_image;
	private Hall hall;
	
	public Event() {}
	
	

	public Event(int event_id, String event_name, String event_type, String event_description, Date event_date,
			Date start_time, Date end_time, double ticket_price, String event_image) {
		super();
		this.event_id = event_id;
		this.event_name = event_name;
		this.event_type = event_type;
		this.event_description = event_description;
		this.event_date = event_date;
		this.start_time = start_time;
		this.end_time = end_time;
		this.ticket_price = ticket_price;
		this.event_image = event_image;
	}


	public Event(int event_id, String event_name, String event_type, String event_description, Date event_date,
			Date start_time, Date end_time, double ticket_price, String event_image, Hall hall) {
		super();
		this.event_id = event_id;
		this.event_name = event_name;
		this.event_type = event_type;
		this.event_description = event_description;
		this.event_date = event_date;
		this.start_time = start_time;
		this.end_time = end_time;
		this.ticket_price = ticket_price;
		this.event_image = event_image;
		this.hall = hall;
	}

	public int getEvent_id() {
		return event_id;
	}

	public void setEvent_id(int event_id) {
		this.event_id = event_id;
	}

	public String getEvent_name() {
		return event_name;
	}

	public void setEvent_name(String event_name) {
		this.event_name = event_name;
	}

	public String getEvent_type() {
		return event_type;
	}

	public void setEvent_type(String event_type) {
		this.event_type = event_type;
	}

	public String getEvent_description() {
		return event_description;
	}

	public void setEvent_description(String event_description) {
		this.event_description = event_description;
	}

	public Date getEvent_date() {
		return event_date;
	}

	public void setEvent_date(Date event_date) {
		this.event_date = event_date;
	}

	public Date getStart_time() {
		return start_time;
	}

	public void setStart_time(Date start_time) {
		this.start_time = start_time;
	}

	public Date getEnd_time() {
		return end_time;
	}

	public void setEnd_time(Date end_time) {
		this.end_time = end_time;
	}

	public double getTicket_price() {
		return ticket_price;
	}

	public void setTicket_price(double ticket_price) {
		this.ticket_price = ticket_price;
	}

	public String getEvent_image() {
		return event_image;
	}

	public void setEvent_image(String event_image) {
		this.event_image = event_image;
	}

	public Hall getHall() {
		return hall;
	}

	public void setHall(Hall hall) {
		this.hall = hall;
	}
	
	
	
}
