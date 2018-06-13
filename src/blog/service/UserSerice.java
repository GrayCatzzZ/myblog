package blog.service;

import blog.pojo.User;

public interface UserSerice {
	
	public boolean userRegister(User user);

	public void active(String code);

	public boolean checkUserName(String user_name);

	public boolean userLogin(User user);
	
	public User queryUser(String user_name);
}
