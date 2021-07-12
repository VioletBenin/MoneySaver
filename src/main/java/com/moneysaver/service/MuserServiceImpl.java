package com.moneysaver.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.moneysaver.bean.User;
import com.moneysaver.dao.UserMapping;
@Service("muserService")
@Transactional
public class MuserServiceImpl implements MuserService{
@Autowired
private UserMapping userMapping;
//查询所有用户
	public List<User> selectUser() {
	//	PageHelper.startPage(1, 6);
		List<User> list = userMapping.selectUser();
		return list;
	}

	//删除用户
	@Override
	public int deleteuser(int id) {
		return userMapping.deleteuser(id);

	}
	//更新密码
	@Override
	public int updatepwd(int id) {
		return userMapping.updatepwd(id);
	}
	//更新用户类型
	@Override
	public int updatetype(User user) {
		return userMapping.updatetype(user);
	}
	//添加用户
	@Override
	public int insertuser(User user) {
		return userMapping.insertuser(user);
	}
	//模糊查询单个用户
	@Override
	public List<User> selectpartuser(User user) {
		PageHelper.startPage(1, 6);
		List<User> list = userMapping.selectpartuser(user);
		return userMapping.selectpartuser(user);
	}

//	@Override
//	public List<User> checktelephone(String telephone) {
//		List<User> list = userMapping.checktelephone(telephone);
//		return list;}
}
