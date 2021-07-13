package com.moneysaver.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.moneysaver.bean.User;
import com.moneysaver.dao.LoginMapping;

@Service("LoginService")
@Transactional
public class LoginServiceImpl implements LoginService {
	@Autowired
	private LoginMapping l;	
	
	
//	注册
	@Override
	public boolean register(User u) {
		return l.checkRegister(u.getPassword(),u.getTelephone());
	}	
	
//	登录
	@Override
	public boolean login(User u) {
		boolean b;
		b=u.getPassword().equals(l.selectUserPassword(u.getTelephone()));
		return b;
	}
	
//	更新密码
	@Override
	public boolean updatePwdByTele(User u) {		
		return l.updatePwdByTele(u.getPassword(),u.getTelephone());
	}
	
//	更新信息
	@Override
	public boolean updateUserInfo(User u) {
		return l.updateUserInfo(u.getTelephone(),u.getName(),u.getSex(),u.getAge(),u.getBirthday(),u.getProvince(),u.getCity(),u.getMoney());
	}

}
