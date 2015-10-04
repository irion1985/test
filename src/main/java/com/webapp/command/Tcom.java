package com.webapp.command;

import org.springframework.web.multipart.MultipartFile;

public class Tcom {
	
	String name;
	String pw;
	MultipartFile up;
	String title;
	String text;
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public MultipartFile getUp() {
		return up;
	}
	public void setUp(MultipartFile up) {
		this.up = up;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	
	
	
	

}
