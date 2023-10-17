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
	private String    paynum;
	
	public synchronized String getU_name() {
		return u_name;
	}
	public synchronized void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public synchronized String getS_name() {
		return s_name;
	}
	public synchronized void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public synchronized String getW_name() {
		return w_name;
	}
	public synchronized void setW_name(String w_name) {
		this.w_name = w_name;
	}
	public synchronized Date getPh_date() {
		return ph_date;
	}
	public synchronized void setPh_date(Date ph_date) {
		this.ph_date = ph_date;
	}
	public synchronized Date getSh_date() {
		return sh_date;
	}
	public synchronized void setSh_date(Date sh_date) {
		this.sh_date = sh_date;
	}
	public synchronized int getC_idx() {
		return c_idx;
	}
	public synchronized void setC_idx(int c_idx) {
		this.c_idx = c_idx;
	}
	public synchronized int getP_allprice() {
		return p_allprice;
	}
	public synchronized void setP_allprice(int p_allprice) {
		this.p_allprice = p_allprice;
	}
	public synchronized int getU_no() {
		return u_no;
	}
	public synchronized void setU_no(int u_no) {
		this.u_no = u_no;
	}
	public synchronized int getS_no() {
		return s_no;
	}
	public synchronized void setS_no(int s_no) {
		this.s_no = s_no;
	}
	public synchronized int getW_no() {
		return w_no;
	}
	public synchronized void setW_no(int w_no) {
		this.w_no = w_no;
	}
	public synchronized String getPaynum() {
		return paynum;
	}
	public synchronized void setPaynum(String paynum) {
		this.paynum = paynum;
	}
	@Override
	public String toString() {
		return "PaymentVo [u_name=" + u_name + ", s_name=" + s_name + ", w_name=" + w_name + ", ph_date=" + ph_date
				+ ", sh_date=" + sh_date + ", c_idx=" + c_idx + ", p_allprice=" + p_allprice + ", u_no=" + u_no
				+ ", s_no=" + s_no + ", w_no=" + w_no + ", paynum=" + paynum + "]";
	}
	
	public PaymentVo() {}
	public PaymentVo(String u_name, String s_name, String w_name, Date ph_date, Date sh_date, int c_idx, int p_allprice,
			int u_no, int s_no, int w_no, String paynum) {
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
	}
	

	
	
}
