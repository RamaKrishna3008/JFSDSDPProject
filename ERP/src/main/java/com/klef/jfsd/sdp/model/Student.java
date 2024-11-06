package com.klef.jfsd.sdp.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "student_table")
public class Student {

	@Id
	private long id;
	@Column(nullable = false)
	private String name;
	@Column(nullable = false)
	private String fatherName;
	@Column(nullable = false)
	private String motherName;
	@Column(nullable = false, unique = true)
	private String contact;
	@Column(nullable = false)
	private String address;
	@Column(nullable = false)
	private String password;
	@Column(nullable = false)
	private String status;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getMotherName() {
		return motherName;
	}

	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Student(long id, String name, String fatherName, String motherName, String contact, String address,
			String password, String status) {
		
		this.id = id;
		this.name = name;
		this.fatherName = fatherName;
		this.motherName = motherName;
		this.contact = contact;
		this.address = address;
		this.password = password;
		this.status = status;
	}

	public Student() {
		super();
	}

}
