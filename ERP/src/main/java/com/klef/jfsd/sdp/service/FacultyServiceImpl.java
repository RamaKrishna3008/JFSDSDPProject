package com.klef.jfsd.sdp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.Faculty;
import com.klef.jfsd.sdp.repository.FacultyRepository;

@Service
public class FacultyServiceImpl implements FacultyService
{
	
	@Autowired
	FacultyRepository facultyRepository;
	
	
	
	
	@Override
	public Faculty CheckFacultyLogin(String username, String pwd) 
	{
		return facultyRepository.CheckFacultyLogin(username, pwd);
	}

}
