package com.iris.notification;

public class NotificationMessage {

	private String subject;
	private String message;
	private String from;
	private String time;
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getTime() {
		return time;
	}
	public void setTo(String to) {
		time = to;
	}
	
	
}
