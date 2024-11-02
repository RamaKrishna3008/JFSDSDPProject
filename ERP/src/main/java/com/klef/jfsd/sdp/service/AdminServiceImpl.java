package com.klef.jfsd.sdp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.Admin;
import com.klef.jfsd.sdp.repository.AdminRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	AdminRepository adminRepository;
	
	@Override
	public Admin checkAdminLogin(String username, String password) 
	{
		return adminRepository.checkAdminLogin(username, password);
	}

}
