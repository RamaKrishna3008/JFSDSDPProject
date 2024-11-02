package com.klef.jfsd.sdp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.sdp.model.Admin;
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
}
