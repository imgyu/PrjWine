package com.green.user.cart.vo;

import java.sql.Date;

public class PaymentVo {

	
	private String u_name;
	private String s_name;
	private String w_name;
	private Date   ph_date;
	private Date   sh_date;
	private int    c_idx;
	private int    p_allprice;
	private int    u_no;
	private int    s_no;
	private int    w_no;
	private String paynum;
	private String p_state;
	private String u_phone;
	private String w_price;
	private int w_amount;
	public PaymentVo() {}
	public PaymentVo(String u_name, String s_name, String w_name, Date ph_date, Date sh_date, int c_idx, int p_allprice,
			int u_no, int s_no, int w_no, String paynum, String p_state, String u_phone, String w_price, int w_amount) {
		this.u_name = u_name;
		this.s_name = s_name;
		this.w_name = w_name;
		this.ph_date = ph_date;
		this.sh_date = sh_date;
		this.c_idx = c_idx;
		this.p_allprice = p_allprice;
		this.u_no = u_no;
		this.s_no = s_no;
		this.w_no = w_no;
		this.paynum = paynum;
		this.p_state = p_state;
		this.u_phone = u_phone;
		this.w_price = w_price;
		this.w_amount = w_amount;
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
	public int getP_allprice() {
		return p_allprice;
	}
	public void setP_allprice(int p_allprice) {
		this.p_allprice = p_allprice;
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
	public int getW_no() {
		return w_no;
	}
	public void setW_no(int w_no) {
		this.w_no = w_no;
	}
	public String getPaynum() {
		return paynum;
	}
	public void setPaynum(String paynum) {
		this.paynum = paynum;
	}
	public String getP_state() {
		return p_state;
	}
	public void setP_state(String p_state) {
		this.p_state = p_state;
	}
	public String getU_phone() {
		return u_phone;
	}
	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}
	public String getW_price() {
		return w_price;
	}
	public void setW_price(String w_price) {
		this.w_price = w_price;
	}
	public int getW_amount() {
		return w_amount;
	}
	public void setW_amount(int w_amount) {
		this.w_amount = w_amount;
	}
	@Override
	public String toString() {
		return "PaymentVo [u_name=" + u_name + ", s_name=" + s_name + ", w_name=" + w_name + ", ph_date=" + ph_date
				+ ", sh_date=" + sh_date + ", c_idx=" + c_idx + ", p_allprice=" + p_allprice + ", u_no=" + u_no
				+ ", s_no=" + s_no + ", w_no=" + w_no + ", paynum=" + paynum + ", p_state=" + p_state + ", u_phone="
				+ u_phone + ", w_price=" + w_price + ", w_amount=" + w_amount + "]";
	}
}
