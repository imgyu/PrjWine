package com.green.user.vo;

public class UserVo {
	// Field
	private int     u_no;
	private String  u_id;
	private String  u_pw;
	private String  u_name;
	private String  u_birth;
	private String  u_postcode;
	private String  u_address;
	private String  u_detailAddress;
	private String  u_extraAddress;
	private String  u_phone;
	private int     u_point;
	
	public UserVo() {}
	public UserVo(int u_no, String u_id, String u_pw, String u_name, String u_birth, String u_postcode,
			String u_address, String u_detailAddress, String u_extraAddress, String u_phone, int u_point) {
		this.u_no = u_no;
		this.u_id = u_id;
		this.u_pw = u_pw;
		this.u_name = u_name;
		this.u_birth = u_birth;
		this.u_postcode = u_postcode;
		this.u_address = u_address;
		this.u_detailAddress = u_detailAddress;
		this.u_extraAddress = u_extraAddress;
		this.u_phone = u_phone;
		this.u_point = u_point;
	}

	// Getter&Setter
	public int getU_no() {
		return u_no;
	}

	public void setU_no(int u_no) {
		this.u_no = u_no;
	}

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

	public String getU_postcode() {
		return u_postcode;
	}

	public void setU_postcode(String u_postcode) {
		this.u_postcode = u_postcode;
	}

	public String getU_address() {
		return u_address;
	}

	public void setU_address(String u_address) {
		this.u_address = u_address;
	}

	public String getU_detailAddress() {
		return u_detailAddress;
	}

	public void setU_detailAddress(String u_detailAddress) {
		this.u_detailAddress = u_detailAddress;
	}

	public String getU_extraAddress() {
		return u_extraAddress;
	}

	public void setU_extraAddress(String u_extraAddress) {
		this.u_extraAddress = u_extraAddress;
	}

	public String getU_phone() {
		return u_phone;
	}

	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}

	public int getU_point() {
		return u_point;
	}

	public void setU_point(int u_point) {
		this.u_point = u_point;
	}

	// toString
	@Override
	public String toString() {
		return "UserVo [u_no=" + u_no + ", u_id=" + u_id + ", u_pw=" + u_pw + ", u_name=" + u_name + ", u_birth="
				+ u_birth + ", u_postcode=" + u_postcode + ", u_address=" + u_address + ", u_detailAddress="
				+ u_detailAddress + ", u_extraAddress=" + u_extraAddress + ", u_phone=" + u_phone + ", u_point="
				+ u_point + "]";
		
		
	}
	

	

}