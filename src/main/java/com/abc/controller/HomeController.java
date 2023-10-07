package com.abc.controller;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.abc.dao.UserDao;
import com.abc.entity.User;





@Controller
public class HomeController {

	
	@Autowired
	private UserDao udo;
	
	@RequestMapping(path = "/home")
	public String getHomr() {
		return "home";
	}
	@RequestMapping(path = "/login")
	public String getlog() {
		return "login";
	}
	@RequestMapping(path = "/register")
	public String getreg() {
		return "register";
	}
	

	
	@RequestMapping(path = "/userRegister" ,method = RequestMethod.POST)
	public String registerUser(@ModelAttribute User ub,HttpSession hs) {
		System.out.println(ub);
		udo.saveUser(ub);
		
		hs.setAttribute("suc", "Your Account Registered Successfully.....");
		return "redirect:/register";
	}
	
	@RequestMapping(path = "/userLogin",method = RequestMethod.POST)
	public String userlog(@RequestParam("email") String em,@RequestParam("password") String ps,HttpSession hs) {
		User uob= udo.loginUser(em,ps);
		if(uob!=null) {
			hs.setAttribute("userLog", uob);
			return "redirect:/home";
		}else {
			hs.setAttribute("unLog", "Invalid email or Password");
			return "redirect:/login";
		}
		
	}
	
	
	
	

	
}
