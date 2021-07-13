package com.moneysaver.dao;

import java.util.Date;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository("loginMapping")
@Mapper
public interface LoginMapping {
	
	String selectUserPassword(String telephone) ;
	boolean updatePwdByTele(String password,String telephone);
	boolean checkRegister(String password,String telephone);
	boolean updateUserInfo(String telephone,String name,String sex,int age,Date date,String province,String city,float f);
	
}
