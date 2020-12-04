package com.app.web.formbeans;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

public class LoginBean {

	@NotEmpty(message = "Username can not be left blank")
	private String username;

	@NotEmpty(message = "Password can not be left blank")
	private String password;

	

	public LoginBean() {
	}


	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}