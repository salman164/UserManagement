package com.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user_tab")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="name",nullable = false)
	private String name;
	
	@Column(name="email",nullable = false,unique = true)
	private String email;
	
	@Column(name="password",nullable = false)
	private String password;
	
	@Column(name="phone")
	private String phone;
	
	@Column(name="dob")
	private String dob;
	
	@Column(name="city")
	private String city;

	public User(int id, String name, String email, String password, String phone, String dob, String city) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.phone = phone;
		this.dob = dob;
		this.city = city;
	}

	public User(String name, String email, String password, String phone, String dob, String city) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.phone = phone;
		this.dob = dob;
		this.city = city;
	}
	
	

	public User(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}
	

	public User(int id, String name, String phone, String dob, String city) {
		super();
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.dob = dob;
		this.city = city;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(Class<User> class1, int id2) {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}
	
	

}
