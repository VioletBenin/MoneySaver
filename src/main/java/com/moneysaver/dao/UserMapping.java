package com.moneysaver.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.moneysaver.bean.User;

@Repository("useMapping")
@Mapper
public interface UserMapping {
	//查询所有用户
		List<User> selectUser();
	//删除用户
		int deleteuser(int id);
	//更新密码
		int updatepwd(int id);
	//更新用户类型
		int updatetype(User user);	
	//添加用户
		int insertuser(User user);
	//模糊查询单个用户
		List<User> selectpartuser(User user);
	//验证手机唯一性
//		List<User> checktelephone(String telephone);
	
}
