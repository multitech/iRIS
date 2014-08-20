package com.iris.login.service;

import java.util.Hashtable;

import javax.naming.Context;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.iris.login.bean.LoginVo;

@Service
public class LoginServiceImpl implements LoginService {

	@Value("${ldap.providerURL}")
	private String ldapProviderUrl;
	
	@Value("${ldap.securityPricipal}")
	private String ldapSecurityPrincipal;
	
	@Override
	public boolean login(){
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean ldapAuthentication(LoginVo loginVo) {
	    Hashtable<String,String> env = new Hashtable<String,String>();
	    env.put(Context.INITIAL_CONTEXT_FACTORY, "com.sun.jndi.ldap.LdapCtxFactory");
	    env.put(Context.PROVIDER_URL, ldapProviderUrl);
	    env.put(Context.SECURITY_AUTHENTICATION, "simple");
	    env.put(Context.SECURITY_PRINCIPAL,"cn="+loginVo.getUserName()+","+ldapSecurityPrincipal);
	    env.put(Context.SECURITY_CREDENTIALS, loginVo.getPassword());
	    
	    DirContext initialContext =null;
	    try{
	        initialContext = new InitialDirContext(env);
	    }catch(Exception e){
	       System.out.println("Error while creating context in ldap authentication : "+e.getMessage());
	    }
	    if(initialContext!=null){
	    	return true;
	    }else{
	    	return false;
	    }
	}

}
