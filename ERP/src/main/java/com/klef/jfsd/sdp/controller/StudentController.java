package com.klef.jfsd.sdp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.sdp.model.Student;
import com.klef.jfsd.sdp.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {
	@Autowired
	private StudentService studentService;

	@GetMapping("studentlogin")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("studentlogin");
		return mv;
	}

	@PostMapping("studentlogin")
	public ModelAndView login(HttpServletRequest request) {

		ModelAndView mv = new ModelAndView();
		long id = Long.parseLong(request.getParameter("id"));
		String password = request.getParameter("password");

		Student st = studentService.studentLogin(id, password);
		if (st != null) {
			HttpSession session = request.getSession();
			session.setAttribute("student", st);
			if (st.getStatus().equals("NA")) {
				mv.setViewName("studentdetails");
			} else {
				mv.setViewName("studenthome");
			}

		} else {
			mv.setViewName("studentlogin");
			String error = "Invalid Credentials";
			mv.addObject("error", error);
		}
		return mv;
	}

	@PostMapping("updatestudentdetails")
	public ModelAndView updateStudentDetails(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();

		long id = Long.parseLong(request.getParameter("id"));
		String name = request.getParameter("name");
		String fatherName = request.getParameter("fatherName");
		String motherName = request.getParameter("motherName");
		String contact = request.getParameter("contact");
		String address = request.getParameter("address");
		String password = request.getParameter("password");
		String status = "Completed";
		
		Student st = new Student(id, name, fatherName, motherName, contact, address, password, status);
		
		if(studentService.updateStudent(st)) {
			mv.setViewName("studenthome");
		}else {
			mv.setViewName("studentdetails");
			String error = "Please Enter all the details correctly";
			mv.addObject("error", error);
		}
		return mv;
	}

}
