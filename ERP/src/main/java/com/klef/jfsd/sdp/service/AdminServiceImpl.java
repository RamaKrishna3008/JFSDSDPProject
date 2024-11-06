package com.klef.jfsd.sdp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.Admin;
import com.klef.jfsd.sdp.model.Faculty;
import com.klef.jfsd.sdp.model.Student;
import com.klef.jfsd.sdp.repository.AdminRepository;
import com.klef.jfsd.sdp.repository.FacultyRepository;
import com.klef.jfsd.sdp.repository.StudentRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	AdminRepository adminRepository;
	
	@Autowired
	FacultyRepository facultyRepository;
	
	@Autowired
	StudentRepository studentRepository;
	
	@Override
	public Admin checkAdminLogin(String username, String password) 
	{
		return adminRepository.checkAdminLogin(username, password);
	}
	
	@Override
	public String addFaculty(Faculty f) 
	{
		facultyRepository.save(f);
		return "Registered Successfully";
	}

	@Override
	public List<Faculty> viewAllFaculty() 
	{
		return facultyRepository.findAll();
	}

	@Override
	public String addStudent(Student s) 
	{
		studentRepository.save(s);
		return "Registered Successfully";
	}

	@Override
	public List<Student> viewAllStudents()
	{
		return studentRepository.findAll();
	}
}
