package com.klef.jfsd.sdp.service;

import com.klef.jfsd.sdp.model.Student;

public interface StudentService{
	public Student studentLogin(long id, String password);
	public boolean updateStudent(Student st);

}
