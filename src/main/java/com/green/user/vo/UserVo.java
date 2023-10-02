package com.green.user.vo;

public class UserVo {
	// Field
	private String  u_id;
	private String  u_pw;
	private String  u_name;
	private String  u_birth;
	private String  u_si;
	private String  u_gu;
	private String  u_phone;
	
	// Getter&Setter
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getU_pw() {
		return u_pw;
	}
	public void setU_pw(String u_pw) {
		this.u_pw = u_pw;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_birth() {
		return u_birth;
	}
	public void setU_birth(String u_birth) {
		this.u_birth = u_birth;
	}
	public String getU_si() {
		return u_si;
	}
	public void setU_si(String u_si) {
		this.u_si = u_si;
	}
	public String getU_gu() {
		return u_gu;
	}
	public void setU_gu(String u_gu) {
		this.u_gu = u_gu;
	}
	public String getU_phone() {
		return u_phone;
	}
	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}
	
	// Constructor 
	public UserVo() {
		
	}
	public UserVo(String u_id, String u_pw, String u_name, String u_birth, String u_si, String u_gu, String u_phone) {
		this.u_id = u_id;
		this.u_pw = u_pw;
		this.u_name = u_name;
		this.u_birth = u_birth;
		this.u_si = u_si;
		this.u_gu = u_gu;
		this.u_phone = u_phone;
	}
	
	// toString
	@Override
	public String toString() {
		return "UserVo [u_id=" + u_id + ", u_pw=" + u_pw + ", u_name=" + u_name + ", u_birth=" + u_birth + ", u_si="
				+ u_si + ", u_gu=" + u_gu + ", u_phone=" + u_phone + "]";
	}
}
