package com.iris.login.service;

import com.iris.login.bean.LoginVo;

public interface LoginService {

	boolean login();
	
	boolean ldapAuthentication(LoginVo loginVo);
	
}
