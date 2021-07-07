package com.moneysaver.bean;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Income {
private int incomeid;
private int incometypeid;
private int id;
private float money;
private String remark;
@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
private Date time;
public int getIncomeid() {
	return incomeid;
}
public void setIncomeid(int incomeid) {
	this.incomeid = incomeid;
}
public int getIncometypeid() {
	return incometypeid;
}
public void setIncometypeid(int incometypeid) {
	this.incometypeid = incometypeid;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public float getMoney() {
	return money;
}
public void setMoney(float money) {
	this.money = money;
}
public String getRemark() {
	return remark;
}
public void setRemark(String remark) {
	this.remark = remark;
}
public Date getTime() {
	return time;
}
public void setTime(Date time) {
	this.time = time;
}
@Override
public String toString() {
	return "Income [incomeid=" + incomeid + ", incometypeid=" + incometypeid + ", id=" + id + ", money=" + money
			+ ", remark=" + remark + ", time=" + time + "]";
}



}
