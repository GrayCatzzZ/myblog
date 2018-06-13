package blog.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blog.mapper.UserMapper;
import blog.pojo.User;
import blog.service.UserSerice;

@Service
public class UserSericeImpl implements UserSerice {

	@Autowired
	private UserMapper userMapper; 
	
	@Override
	public boolean userRegister(User user) {
		
		userMapper.userRegister(user);
		Integer id = user.getUser_id();
		System.out.println(id);
		if(null != id) {
			return true;
		}else
		return false;
		
	}
	@Override
	public void active(String code) {
		userMapper.active(code);
		
	}
	@Override
	public boolean checkUserName(String user_name) {
		Integer row = userMapper.checkUserName(user_name);
		if(row == null  || row == 0) {
			return true;
		}else
			return false;
		
	}
	@Override
	public boolean userLogin(User user) {
		int login = userMapper.userLogin(user);
		return (login == 1) ? true : false;
		
	}
	
	public User queryUser(String user_name) {
		return userMapper.queryUser(user_name);
	}

}
