package com.klef.jfsd.sdp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.sdp.model.Admin;
import com.klef.jfsd.sdp.model.Faculty;
import com.klef.jfsd.sdp.model.Student;
import com.klef.jfsd.sdp.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;


@Controller
public class AdminController 
{
	@Autowired
	AdminService service;
	
	@GetMapping("AdminLogin")
	public ModelAndView AdminLogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("AdminLogin");
		return mv;
	}
	
	@PostMapping("checkAdminlogin")
	public ModelAndView checkAdminlogin(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		String username = request.getParameter("username");
		String pwd = request.getParameter("password");
		Admin a = service.checkAdminLogin(username, pwd);
		if(a!=null)
		{
			mv.addObject("message","Login Successful");
			mv.setViewName("AdminHome");
				
		}
		else
		{
			mv.addObject("message", "Login Failed");
			mv.setViewName("AdminLogin");
		}
		
		return mv;
	}
	
	@GetMapping("/facultyregistration")
	public ModelAndView registration()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("FacultyRegistration");
		return mv;
	}
	
	@PostMapping("RegisterFaculty")
	public ModelAndView RegisterFaculty(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		String name = request.getParameter("name");
		String username = request.getParameter("username");
		String pwd = request.getParameter("password");
		String email = request.getParameter("email");
		String contact = request.getParameter("contactno");
		
		Faculty f=new Faculty();
		f.setName(name);
		f.setUsername(username);
		f.setPassword(pwd);
		f.setEmail(email);
		f.setContactno(contact);
		
		String msg = service.addFaculty(f);
		
		mv.setViewName("FacultyRegistration");
		mv.addObject("message",msg);
		return mv;
		
	}
	
	
	@GetMapping("/studentregistration")
	public ModelAndView studentregistartion()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("StudentRegistration");
		return mv;
	}
	
	@PostMapping("RegisterStudent")
	public ModelAndView RegisterStudent(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		int id = Integer.parseInt(request.getParameter("idno"));
		String name = request.getParameter("name");
		String fathername = request.getParameter("fathername");
		String mothername = request.getParameter("mothername");
		String pwd = request.getParameter("password");
		String address = request.getParameter("address");
		String contact = request.getParameter("contactno");
		
		Student s=new Student();
		s.setId(id);
		s.setName(name);
		s.setFatherName(fathername);
		s.setMotherName(mothername);
		s.setPassword(pwd);
		s.setAddress(address);
		s.setContact(contact);
		s.setStatus("NA");
		
		String msg = service.addStudent(s);
		
		mv.setViewName("StudentRegistration");
		mv.addObject("message",msg);
		return mv;
		
	}
	
	@GetMapping("ViewAllFaculty")
	public ModelAndView ViewAllFaculty()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("ViewAllFaculty");
		mv.addObject("facultylist",service.viewAllFaculty());
		return mv;
	}
	
	@GetMapping("ViewAllStudent")
	public ModelAndView ViewAllStudent()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("ViewAllStudents");
		mv.addObject("studentlist",service.viewAllStudents());
		return mv;
	}
	
	@GetMapping("Logout")
	public ModelAndView logout()
	{
		ModelAndView mv= new ModelAndView("home");
		return mv;
	}
}
