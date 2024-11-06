package com.klef.jfsd.sdp.service;

import java.util.List;

import com.klef.jfsd.sdp.model.Admin;
import com.klef.jfsd.sdp.model.Faculty;
import com.klef.jfsd.sdp.model.Student;

public interface AdminService 
{
	public Admin checkAdminLogin(String username,String password);
	public String addFaculty(Faculty f);
	public List<Faculty> viewAllFaculty();
	public String addStudent(Student s);
	public List<Student> viewAllStudents();
	
}
