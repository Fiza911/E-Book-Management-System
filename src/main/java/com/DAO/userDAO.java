package com.DAO;
import com.entity.user;
public interface userDAO 
{
	public boolean userRegistre(user us);
	
	public user login(String email,String password);
	
	
}
