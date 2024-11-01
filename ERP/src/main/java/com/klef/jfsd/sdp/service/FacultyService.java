package com.klef.jfsd.sdp.service;

import com.klef.jfsd.sdp.model.Faculty;

public interface FacultyService 
{
	public String addFaculty(Faculty f);
	public Faculty CheckFacultyLogin(String username,String pwd);

}
