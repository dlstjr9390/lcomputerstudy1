package com.lcomputerstudy1.example.service;

import java.util.List;
import java.util.Collection;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetailsService;
import com.lcomputerstudy1.example.domain.User;

public interface UserService extends UserDetailsService{
	
	public User readUser(String username);
	
	public void createUser(User usre);
	
	public void createAuthorities(User user);
	
	Collection<GrantedAuthority> getAuthorities(String username);
	
}
