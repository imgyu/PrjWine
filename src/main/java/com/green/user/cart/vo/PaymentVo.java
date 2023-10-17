package com.green.user.cart.vo;

import java.sql.Date;

public class PaymentVo {

   private String u_name;
   private String s_name;
   private String w_name;
   private Date   ph_date;
   private Date   sh_date;
   private int    c_idx;
   private int    c_allprice;
   private int    u_no;
   private int    s_no;
   private String paynum;
   public PaymentVo() {}
   public PaymentVo(String u_name, String s_name, String w_name, Date ph_date, Date sh_date, int c_idx, int c_allprice,
		int u_no, int s_no, String paynum) {
	this.u_name = u_name;
	this.s_name = s_name;
	this.w_name = w_name;
	this.ph_date = ph_date;
	this.sh_date = sh_date;
	this.c_idx = c_idx;
	this.c_allprice = c_allprice;
	this.u_no = u_no;
	this.s_no = s_no;
	this.paynum = paynum;
   }
public String getU_name() {
	return u_name;
}
public void setU_name(String u_name) {
	this.u_name = u_name;
}
public String getS_name() {
	return s_name;
}
public void setS_name(String s_name) {
	this.s_name = s_name;
}
public String getW_name() {
	return w_name;
}
public void setW_name(String w_name) {
	this.w_name = w_name;
}
public Date getPh_date() {
	return ph_date;
}
public void setPh_date(Date ph_date) {
	this.ph_date = ph_date;
}
public Date getSh_date() {
	return sh_date;
}
public void setSh_date(Date sh_date) {
	this.sh_date = sh_date;
}
public int getC_idx() {
	return c_idx;
}
public void setC_idx(int c_idx) {
	this.c_idx = c_idx;
}
public int getC_allprice() {
	return c_allprice;
}
public void setC_allprice(int c_allprice) {
	this.c_allprice = c_allprice;
}
public int getU_no() {
	return u_no;
}
public void setU_no(int u_no) {
	this.u_no = u_no;
}
public int getS_no() {
	return s_no;
}
public void setS_no(int s_no) {
	this.s_no = s_no;
}
public String getPaynum() {
	return paynum;
}
public void setPaynum(String paynum) {
	this.paynum = paynum;
}
@Override
public String toString() {
	return "PaymentVo [u_name=" + u_name + ", s_name=" + s_name + ", w_name=" + w_name + ", ph_date=" + ph_date
			+ ", sh_date=" + sh_date + ", c_idx=" + c_idx + ", c_allprice=" + c_allprice + ", u_no=" + u_no + ", s_no="
			+ s_no + ", paynum=" + paynum + "]";
}
     
}