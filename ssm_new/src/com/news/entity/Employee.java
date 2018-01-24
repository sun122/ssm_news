package com.news.entity;

import org.springframework.stereotype.Component;

@Component
public class Employee {
	private Integer e_id;
	private String e_name;
	private String e_password;
	private String e_email;
	private String e_gander;
	private String e_data;
	
	public Employee() {
	}
	
	public int getE_id() {
		return e_id;
	}
	public void setE_id(int e_id) {
		this.e_id = e_id;
	}
	public String getE_name() {
		return e_name;
	}
	public void setE_name(String e_name) {
		this.e_name = e_name;
	}
	public String getE_password() {
		return e_password;
	}
	public void setE_password(String e_password) {
		this.e_password = e_password;
	}
	public String getE_email() {
		return e_email;
	}
	public void setE_email(String e_email) {
		this.e_email = e_email;
	}
	public String getE_gander() {
		return e_gander;
	}
	public void setE_gander(String e_gander) {
		this.e_gander = e_gander;
	}

	public String getE_data() {
		return e_data;
	}

	public void setE_data(String e_data) {
		this.e_data = e_data;
	}

	@Override
	public String toString() {
		return "Employee [e_id=" + e_id + ", e_name=" + e_name + ", e_password=" + e_password + ", e_email=" + e_email
				+ ", e_gander=" + e_gander + ", e_data=" + e_data + "]";
	}

	
}
