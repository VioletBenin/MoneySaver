package com.moneysaver.test;

import java.sql.SQLException;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class Test {
	
	public static void main(String[] args)throws SQLException{
		ApplicationContext zxy = new ClassPathXmlApplicationContext("springConfig.xml");
		ComboPooledDataSource ds=(ComboPooledDataSource)zxy.getBean("ds");
		System.out.println("111111111"+ds);
		System.out.println("2222222222"+ds.getConnection());
}
}
