package com.moneysaver.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.moneysaver.bean.User;
import com.moneysaver.service.LoginServiceImpl;

//import com.moneysaver.service.LoginService;


import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

//	@RequestMapping("/LoginController")
//    public String changeto(String s) {
//		
//		
//		
//        return s+"";
//    }
	
	@Autowired
	public LoginServiceImpl l;
	
//	登录成功，跳转内页
//	@RequestMapping(value="/index", method=RequestMethod.GET)
//	public String toIndex(HttpSession session){
//		if(session.getAttribute("user")!=null)
//			return "redirect:/logout";
//		return "index";
//	}
	
//	@RequestMapping(value="/home", method=RequestMethod.GET)
//	public String toHome(HttpSession session){
//		return "home";
//	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)	
	public String get(HttpSession session){
		
		
		if(session.getAttribute("user")!=null)
			return "redirect:/logout";
		return "login";
	}
	
//	@RequestMapping(value="/register",method=RequestMethod.GET)
//	public String reg(HttpSession session){
//		if(session.getAttribute("user")!=null)
//			return "redirect:/logout";
//		return "register";
//	}
		
	@RequestMapping( value="/login", method=RequestMethod.POST )
	public String login( String tele, String password, HttpSession session, Model model ) {
		
		try {
			User user=new User();
			user.setTelephone(tele);
			user.setPassword(password);			
			boolean b = l.login(user);
			
			session.setAttribute( "user", user );
			model.addAttribute("user", user);
			
			return "redirect:/home";
			
		}catch (Exception e) {
			
			e.printStackTrace();
			model.addAttribute( "msg", e.getMessage() );
			
		}
		return "login";
	}
	
//	@RequestMapping( value="/logout", method=RequestMethod.GET )
//	public String logout( HttpSession session, Model model ) {
//		
//		try {
//			
//			loginService.logout();
//			session.invalidate();
//			
//		}catch (Exception e) {
//			e.printStackTrace();
//			model.addAttribute( "msg", "登出失败" );
//		}
//		return "redirect:/index";
//	}
//	
//	@RequestMapping( value="/register",method=RequestMethod.POST )
//	public String register(User user,Model model){
//		ExpandGroup expandGroup = new ExpandGroup();
//		IncomeGroup incomeGroup = new IncomeGroup();
//		try {
//			System.out.println(user);
//			user.setLevel(new Level());
//			System.out.println(user);
//			user.setUserPic("qq.png");
//			int count = loginService.register(user);
//			if(count == 1) {
//				java.util.Date utilDate = new java.util.Date();
//				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
//				expandGroup.setUser(user);
//				expandGroup.setOutgroupTime(formatter.format(utilDate));
//				expandGroup.setOutgroupBrief("其他");
//				expandGroup.setOutgroupMsg("这是一个系统自带的其他组");
//				expandGroupService.establishExpandGroup(expandGroup);
//				incomeGroup.setUser(user);
//				incomeGroup.setIncomegroupTime(formatter.format(utilDate));
//				incomeGroup.setIncomegroupBrief("其他");
//				incomeGroup.setIncomegroupMsg("这是一个系统自带的其他组");
//				incomeGroupService.establishIncomeGroup(incomeGroup);
//				System.out.println("插入成功");
//
//				
//			} else {
//				System.out.println("插入失败");
//			}
//			return "redirect:/login";
//			
//		}catch (Exception e) {
//			
//			e.printStackTrace();
//			model.addAttribute( "msg", e.getMessage() );
//			
//		}
//
//		return "register";
//	}
	
	
	
	
	
}