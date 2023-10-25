package com.green.user.cart.vo;

import java.util.Objects;

public class CartVo {
   //Field
   
   public int    u_no;
   public int    c_idx;
   public String w_name;
   public String s_name;
   public int c_count;
   public int w_price;
   public int w_amount;
   public int c_allprice;
   public int    wl_idx;
   public int    s_no;
   public int    w_no;
public int getU_no() {
	return u_no;
}
public void setU_no(int u_no) {
	this.u_no = u_no;
}
public int getC_idx() {
	return c_idx;
}
public void setC_idx(int c_idx) {
	this.c_idx = c_idx;
}
public String getW_name() {
	return w_name;
}
public void setW_name(String w_name) {
	this.w_name = w_name;
}
public String getS_name() {
	return s_name;
}
public void setS_name(String s_name) {
	this.s_name = s_name;
}
public int getC_count() {
	return c_count;
}
public void setC_count(int c_count) {
	this.c_count = c_count;
}
public int getW_price() {
	return w_price;
}
public void setW_price(int w_price) {
	this.w_price = w_price;
}
public int getW_amount() {
	return w_amount;
}
public void setW_amount(int w_amount) {
	this.w_amount = w_amount;
}
public int getC_allprice() {
	return c_allprice;
}
public void setC_allprice(int c_allprice) {
	this.c_allprice = c_allprice;
}
public int getWl_idx() {
	return wl_idx;
}
public void setWl_idx(int wl_idx) {
	this.wl_idx = wl_idx;
}
public int getS_no() {
	return s_no;
}
public void setS_no(int s_no) {
	this.s_no = s_no;
}
public int getW_no() {
	return w_no;
}
public void setW_no(int w_no) {
	this.w_no = w_no;
}
@Override
public int hashCode() {
	return Objects.hash(c_allprice, c_count, c_idx, s_name, s_no, u_no, w_amount, w_name, w_no, w_price, wl_idx);
}
@Override
public boolean equals(Object obj) {
	if (this == obj)
		return true;
	if (obj == null)
		return false;
	if (getClass() != obj.getClass())
		return false;
	CartVo other = (CartVo) obj;
	return c_allprice == other.c_allprice && c_count == other.c_count && c_idx == other.c_idx
			&& Objects.equals(s_name, other.s_name) && s_no == other.s_no && u_no == other.u_no
			&& w_amount == other.w_amount && Objects.equals(w_name, other.w_name) && w_no == other.w_no
			&& w_price == other.w_price && wl_idx == other.wl_idx;
}

public CartVo() {}
public CartVo(int u_no, int c_idx, String w_name, String s_name, int c_count, int w_price, int w_amount, int c_allprice,
		int wl_idx, int s_no, int w_no) {
	this.u_no = u_no;
	this.c_idx = c_idx;
	this.w_name = w_name;
	this.s_name = s_name;
	this.c_count = c_count;
	this.w_price = w_price;
	this.w_amount = w_amount;
	this.c_allprice = c_allprice;
	this.wl_idx = wl_idx;
	this.s_no = s_no;
	this.w_no = w_no;
}
   
  
   
   

}