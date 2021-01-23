package com.eb.model;

public class Seat {

	private int seat_id;
	private String seat_no;
	private boolean seat_status;
	private Event event;
	
	public Seat() {}

	public Seat(int seat_id, String seat_no, boolean seat_status) {
		super();
		this.seat_id = seat_id;
		this.seat_no = seat_no;
		this.seat_status = seat_status;
	}

	public Seat(int seat_id, String seat_no, boolean seat_status, Event event) {
		super();
		this.seat_id = seat_id;
		this.seat_no = seat_no;
		this.seat_status = seat_status;
		this.event = event;
	}

	public int getSeat_id() {
		return seat_id;
	}

	public void setSeat_id(int seat_id) {
		this.seat_id = seat_id;
	}

	public String getSeat_no() {
		return seat_no;
	}

	public void setSeat_no(String seat_no) {
		this.seat_no = seat_no;
	}

	public boolean isSeat_status() {
		return seat_status;
	}

	public void setSeat_status(boolean seat_status) {
		this.seat_status = seat_status;
	}

	public Event getEvent() {
		return event;
	}

	public void setEvent(Event event) {
		this.event = event;
	}
	
	
}
