package com.moneysaver.service;

import com.moneysaver.bean.User;

public interface LoginService {
	
//	验证用户密码是否正确
	boolean login(User u);
	
//	修改用户密码
	boolean updatePwdByTele(User u);
	
//	注册
	boolean register(User u);
	
//	更新信息
	boolean updateUserInfo(User u);

}
