package com.green.store.vo;

public class StoreVo {
  
	private int s_no;
	private String s_id;
	private String s_pw;
	private String s_name;
	private String s_sn;
	private String s_si;
	private String s_gu;
	private String s_phone;
	private String s_cont;
	private String s_img;
	
	public StoreVo() {}
	public StoreVo(int s_no, String s_id, String s_pw, String s_name, String s_sn, String s_si, String s_gu,
			String s_phone, String s_cont, String s_img) {
		super();
		this.s_no = s_no;
		this.s_id = s_id;
		this.s_pw = s_pw;
		this.s_name = s_name;
		this.s_sn = s_sn;
		this.s_si = s_si;
		this.s_gu = s_gu;
		this.s_phone = s_phone;
		this.s_cont = s_cont;
		this.s_img = s_img;
	}
	public synchronized int getS_no() {
		return s_no;
	}
	public synchronized void setS_no(int s_no) {
		this.s_no = s_no;
	}
	public synchronized String getS_id() {
		return s_id;
	}
	public synchronized void setS_id(String s_id) {
		this.s_id = s_id;
	}
	public synchronized String getS_pw() {
		return s_pw;
	}
	public synchronized void setS_pw(String s_pw) {
		this.s_pw = s_pw;
	}
	public synchronized String getS_name() {
		return s_name;
	}
	public synchronized void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public synchronized String getS_sn() {
		return s_sn;
	}
	public synchronized void setS_sn(String s_sn) {
		this.s_sn = s_sn;
	}
	public synchronized String getS_si() {
		return s_si;
	}
	public synchronized void setS_si(String s_si) {
		this.s_si = s_si;
	}
	public synchronized String getS_gu() {
		return s_gu;
	}
	public synchronized void setS_gu(String s_gu) {
		this.s_gu = s_gu;
	}
	public synchronized String getS_phone() {
		return s_phone;
	}
	public synchronized void setS_phone(String s_phone) {
		this.s_phone = s_phone;
	}
	public synchronized String getS_cont() {
		return s_cont;
	}
	public synchronized void setS_cont(String s_cont) {
		this.s_cont = s_cont;
	}
	public synchronized String getS_img() {
		return s_img;
	}
	public synchronized void setS_img(String s_img) {
		this.s_img = s_img;
	}
	@Override
	public String toString() {
		return "StoreVo [s_no=" + s_no + ", s_id=" + s_id + ", s_pw=" + s_pw + ", s_name=" + s_name + ", s_sn=" + s_sn
				+ ", s_si=" + s_si + ", s_gu=" + s_gu + ", s_phone=" + s_phone + ", s_cont=" + s_cont + ", s_img="
				+ s_img + "]";
	}
	
	
	
	
}