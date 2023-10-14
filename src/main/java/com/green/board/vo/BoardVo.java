package com.green.board.vo;

public class BoardVo {
	private int b_idx;
	private int s_no;
	private String b_title;
	private String b_cont;
	private String s_id;
	private String s_pw;
	private String s_name;
	private String s_sn;
	private String s_postcode;
	private String s_address;
	private String s_phone;
	private String s_cont;
	private String s_detailaddress;
	private String s_extraaddress;
	private String s_imgname;
	private String s_imgext;
	private String s_simgname;
	public BoardVo() {}
	public BoardVo(int b_idx, int s_no, String b_title, String b_cont, String s_id, String s_pw, String s_name,
			String s_sn, String s_postcode, String s_address, String s_phone, String s_cont, String s_detailaddress,
			String s_extraaddress, String s_imgname, String s_imgext, String s_simgname) {
		this.b_idx = b_idx;
		this.s_no = s_no;
		this.b_title = b_title;
		this.b_cont = b_cont;
		this.s_id = s_id;
		this.s_pw = s_pw;
		this.s_name = s_name;
		this.s_sn = s_sn;
		this.s_postcode = s_postcode;
		this.s_address = s_address;
		this.s_phone = s_phone;
		this.s_cont = s_cont;
		this.s_detailaddress = s_detailaddress;
		this.s_extraaddress = s_extraaddress;
		this.s_imgname = s_imgname;
		this.s_imgext = s_imgext;
		this.s_simgname = s_simgname;
	}
	public int getB_idx() {
		return b_idx;
	}
	public void setB_idx(int b_idx) {
		this.b_idx = b_idx;
	}
	public int getS_no() {
		return s_no;
	}
	public void setS_no(int s_no) {
		this.s_no = s_no;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_cont() {
		return b_cont;
	}
	public void setB_cont(String b_cont) {
		this.b_cont = b_cont;
	}
	public String getS_id() {
		return s_id;
	}
	public void setS_id(String s_id) {
		this.s_id = s_id;
	}
	public String getS_pw() {
		return s_pw;
	}
	public void setS_pw(String s_pw) {
		this.s_pw = s_pw;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getS_sn() {
		return s_sn;
	}
	public void setS_sn(String s_sn) {
		this.s_sn = s_sn;
	}
	public String getS_postcode() {
		return s_postcode;
	}
	public void setS_postcode(String s_postcode) {
		this.s_postcode = s_postcode;
	}
	public String getS_address() {
		return s_address;
	}
	public void setS_address(String s_address) {
		this.s_address = s_address;
	}
	public String getS_phone() {
		return s_phone;
	}
	public void setS_phone(String s_phone) {
		this.s_phone = s_phone;
	}
	public String getS_cont() {
		return s_cont;
	}
	public void setS_cont(String s_cont) {
		this.s_cont = s_cont;
	}
	public String getS_detailaddress() {
		return s_detailaddress;
	}
	public void setS_detailaddress(String s_detailaddress) {
		this.s_detailaddress = s_detailaddress;
	}
	public String getS_extraaddress() {
		return s_extraaddress;
	}
	public void setS_extraaddress(String s_extraaddress) {
		this.s_extraaddress = s_extraaddress;
	}
	public String getS_imgname() {
		return s_imgname;
	}
	public void setS_imgname(String s_imgname) {
		this.s_imgname = s_imgname;
	}
	public String getS_imgext() {
		return s_imgext;
	}
	public void setS_imgext(String s_imgext) {
		this.s_imgext = s_imgext;
	}
	public String getS_simgname() {
		return s_simgname;
	}
	public void setS_simgname(String s_simgname) {
		this.s_simgname = s_simgname;
	}
	@Override
	public String toString() {
		return "BoardVo [b_idx=" + b_idx + ", s_no=" + s_no + ", b_title=" + b_title + ", b_cont=" + b_cont + ", s_id="
				+ s_id + ", s_pw=" + s_pw + ", s_name=" + s_name + ", s_sn=" + s_sn + ", s_postcode=" + s_postcode
				+ ", s_address=" + s_address + ", s_phone=" + s_phone + ", s_cont=" + s_cont + ", s_detailaddress="
				+ s_detailaddress + ", s_extraaddress=" + s_extraaddress + ", s_imgname=" + s_imgname + ", s_imgext="
				+ s_imgext + ", s_simgname=" + s_simgname + "]";
	}
}
