package com.moneysaver.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.moneysaver.bean.User;
import com.moneysaver.dao.UserMapping;
import com.moneysaver.service.MuserService;

@Controller
//@RequestMapping("/manager")
public class ManagerController {
	@Autowired
	public MuserService muserService;
	//查询所有用户
	@RequestMapping("/select")
	public String selectUser(Model model) {	
		List<User> list = muserService.selectUser();
		model.addAttribute("userlist", list);
		System.out.println(list);
		return "SelectAll";
	}
	//删除用户
	@RequestMapping("/delete/{id}")
	public String deleteuser(int id) {
		 muserService.deleteuser(id);
		 return "redirect:/SelectAll";
	}
	
	//更新密码
	@RequestMapping("/updatepwd/{id}")
	public String updatepwd(int id) {
		muserService.updatepwd(id);
		return "redirect:/SelectAll";
	}	
	//更新用户类型
	@RequestMapping("/updatetype")
	public String updatetype(User user) {
		muserService.updatetype(user);
		return "redirect:/SelectAll";
	}
		
	//添加用户
	@RequestMapping("/insert")
	public String insertuser(User user) {
		muserService.insertuser(user);
        return "redirect:/SelectAll";
	}
		
		
	//模糊查询单个用户
	@RequestMapping("/selectpart")
	public String selectpartuser(User user,Model model) {
		List<User> list = muserService.selectUser();
		model.addAttribute("userlist", list);
		return "redirect:/SelectPart";
		
	}
	//验证手机号码是否存在
	@RequestMapping(value = "/checktelephone", method = RequestMethod.POST)
	@ResponseBody
	public String listAllJson(User user, HttpServletRequest request, HttpServletResponse response){
		System.out.println("进入了selectuser方法");
		List<User> list = muserService.selectUser();
		//把查询到的用户数据转换为json数据发送给前端
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("list", list);
		//jsonObject.put("obj", manage);
		return jsonObject.toString();
	}

	//分页功能
	@RequestMapping(value="/list",method=RequestMethod.GET)
    public String pageList(ModelMap map,@RequestParam(defaultValue="1",required=true,value="pageNo") Integer pageNo){
        Integer pageSize=5;//每页显示记录数
        //分页查询
        PageHelper.startPage(pageNo, pageSize);
        List<User> userList = muserService.selectUser();//获取所有用户信息
        PageInfo<User> pageInfo=new PageInfo<User>(userList);
        map.addAttribute("pageInfo", pageInfo);

        return "SelectAll";
    }

}
