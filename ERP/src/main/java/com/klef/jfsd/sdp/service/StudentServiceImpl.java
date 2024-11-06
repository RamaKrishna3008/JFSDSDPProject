package com.klef.jfsd.sdp.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.Student;
import com.klef.jfsd.sdp.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService{
	@Autowired
	private StudentRepository studentRepository;

	@Override
	public Student studentLogin(long id, String password) {
		
		Optional<Student> obj =	studentRepository.findById(id);
		if(obj.isPresent()) {
			Student st = obj.get();
			if(st.getPassword().equals(password)) {
				return st;
			}
		}
		return null;
	}

	@Override
	public boolean updateStudent(Student st) {
		if(studentRepository.save(st)!=null)
			return true;
		else
			return false;
	}
	
	

}
