package blog.controller;

import java.io.IOException;
import java.util.UUID;
import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import blog.pojo.User;
import blog.service.impl.UserSericeImpl;
import blog.utils.MD5Utils;
import blog.utils.MailUtils;


@Controller
public class UserController {
	@Autowired
	private UserSericeImpl userSerice ;
	
	@RequestMapping(value = "/userRegister.action", method=RequestMethod.POST)
	public String userRegister(Model model,User user,String checkcode,HttpSession session) throws AddressException, MessagingException {
	
		String key = (String) session.getAttribute("key");
		if(checkcode != null && checkcode !="" && key.equalsIgnoreCase(checkcode)) {
			//判断用户是否存在,存在则为false
		boolean checkUserName = userSerice.checkUserName(user.getUser_name());
		if(!checkUserName) {
			model.addAttribute("username", "用户名已经存在！");
			return "forward:/page/register.jsp";
		}	
		user.setUser_password(MD5Utils.md5(user.getUser_password()));
		user.setState(0);
		String code = UUID.randomUUID().toString();
		user.setCode(code);
		
		boolean isRegister = userSerice.userRegister(user);
		if(isRegister) {
			String emailMsg = "恭喜您注册成功，请点击下面的连接进行激活账户"
					+ "<a href='http:localhost:8080/myblog/active.action?activeCode="+code+"'>"
							+ "http:localhost:8080/myblog/active?activeCode="+code+"</a>";
			
			MailUtils.sendMail(user.getEmail(), emailMsg);
			return "forward:/page/registerSuccess.jsp";
		}else {
			model.addAttribute("register", "注册失败，请重新注册");
			return "register";
		}
		
		
		}else {
			model.addAttribute("checkcode", "验证码错误");
			return "forward:/page/register.jsp";
		}
	}
	
	//用户激活
	@RequestMapping(value="/active")
	public String jiHuo(String activeCode) {
		
		
		System.out.println(activeCode);
		userSerice.active(activeCode);
		
		return "login";
	}
	
	//退出登陆
	@RequestMapping(value="/outLogin")
	public String outLogin(HttpSession session) {
		session.invalidate();
		return "forward:/index.action";
	}
	
	@RequestMapping(value="/checkUserName.action")
	public void checkUserName(@RequestBody User user,HttpServletResponse response ) throws IOException {
	
		boolean checkUserName = userSerice.checkUserName(user.getUser_name());
		String isExist = "{\"isExist\":"+checkUserName+"}";
		response.getWriter().write(isExist); 
	}
	//验证能否登陆
	@RequestMapping("/login.action")
	public String login(User form_user,String checkcode,HttpSession session,Model model) {
		
		String key = (String) session.getAttribute("key");
		
		if(checkcode != null && checkcode !="" && key.equalsIgnoreCase(checkcode)) {
			form_user.setUser_password(MD5Utils.md5(form_user.getUser_password()));
			boolean userLogin = userSerice.userLogin(form_user);
			System.out.println(form_user.getUser_name());
			if(userLogin) {
				User user = userSerice.queryUser(form_user.getUser_name());
				System.out.println(user.getUser_name());
				System.out.println(user.getUser_id());
				session.setAttribute("user", user);
				return "forward:/index.action";
			}else {
				model.addAttribute("message", "用户名或者密码错误");
				return "forward:/page/login.jsp";
			}
			
		}else {
			model.addAttribute("checkcode", "验证码错误");
			return "forward:/page/login.jsp";
		}
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
