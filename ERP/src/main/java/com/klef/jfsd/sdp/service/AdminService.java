package com.klef.jfsd.sdp.service;

import com.klef.jfsd.sdp.model.Admin;

public interface AdminService 
{
	public Admin checkAdminLogin(String username,String password);
}
