package blog.mapper;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import blog.pojo.User;

@Repository
public interface UserMapper {

	public void userRegister(User user);

	public void active(String code);

	public int checkUserName(String user_name);

	public int userLogin(User user);
	//根据用户名查询用户信息
	public User queryUser(@Param("user_name") String user_name);
	
}
