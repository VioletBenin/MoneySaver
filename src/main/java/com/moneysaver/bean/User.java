package com.moneysaver.bean;

import java.util.Date;

public class User {
private int id;
private String name;
private String password;
private String telephone;
private String sex;
private int age;
//@DateTimeFormat(pattern = "yyyy-MM-dd")
private Date birthday;
private String province;
private String city;
private float money;
private String usertype;

//getter.../setter....
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getTelephone() {
	return telephone;
}
public void setTelephone(String telephone) {
	this.telephone = telephone;
}
public String getSex() {
	return sex;
}
public void setSex(String sex) {
	this.sex = sex;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public Date getBirthday() {
	return birthday;
}
public void setBirthday(Date birthday) {
	this.birthday = birthday;
}
public String getProvince() {
	return province;
}
public void setProvince(String province) {
	this.province = province;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public float getMoney() {
	return money;
}
public void setMoney(float money) {
	this.money = money;
}
public String getUsertype() {
	return usertype;
}
public void setUsertype(String usertype) {
	this.usertype = usertype;
}
@Override
public String toString() {
	return "User [id=" + id + ", name=" + name + ", password=" + password + ", telephone=" + telephone + ", sex=" + sex
			+ ", age=" + age + ", birthday=" + birthday + ", province=" + province + ", city=" + city + ", money="
			+ money + ", usertype=" + usertype + "]";
}


}
