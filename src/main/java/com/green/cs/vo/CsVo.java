package com.green.cs.vo;

import java.sql.Date;

public class CsVo {

	private int ucs_idx;
	private int u_no;
	private int s_no;
	private String ucs_title;
	private String ucs_cont;
	private Date   uw_date;
	private String ucs_img;
	private Date   res_date;
	private String response;
	private String ucs_category;
	private String u_id;
	private String s_id;
	private int scs_idx;
	private String scs_title;
	private String scs_cont;
	private Date sw_date;
	private String scs_img;
	private String scs_category;
	public int getUcs_idx() {
		return ucs_idx;
	}
	public void setUcs_idx(int ucs_idx) {
		this.ucs_idx = ucs_idx;
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
	public String getUcs_title() {
		return ucs_title;
	}
	public void setUcs_title(String ucs_title) {
		this.ucs_title = ucs_title;
	}
	public String getUcs_cont() {
		return ucs_cont;
	}
	public void setUcs_cont(String ucs_cont) {
		this.ucs_cont = ucs_cont;
	}
	public Date getUw_date() {
		return uw_date;
	}
	public void setUw_date(Date uw_date) {
		this.uw_date = uw_date;
	}
	public String getUcs_img() {
		return ucs_img;
	}
	public void setUcs_img(String ucs_img) {
		this.ucs_img = ucs_img;
	}
	public Date getRes_date() {
		return res_date;
	}
	public void setRes_date(Date res_date) {
		this.res_date = res_date;
	}
	public String getResponse() {
		return response;
	}
	public void setResponse(String response) {
		this.response = response;
	}
	public String getUcs_category() {
		return ucs_category;
	}
	public void setUcs_category(String ucs_category) {
		this.ucs_category = ucs_category;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getS_id() {
		return s_id;
	}
	public void setS_id(String s_id) {
		this.s_id = s_id;
	}
	public int getScs_idx() {
		return scs_idx;
	}
	public void setScs_idx(int scs_idx) {
		this.scs_idx = scs_idx;
	}
	public String getScs_title() {
		return scs_title;
	}
	public void setScs_title(String scs_title) {
		this.scs_title = scs_title;
	}
	public String getScs_cont() {
		return scs_cont;
	}
	public void setScs_cont(String scs_cont) {
		this.scs_cont = scs_cont;
	}
	public Date getSw_date() {
		return sw_date;
	}
	public void setSw_date(Date sw_date) {
		this.sw_date = sw_date;
	}
	public String getScs_img() {
		return scs_img;
	}
	public void setScs_img(String scs_img) {
		this.scs_img = scs_img;
	}
	public String getScs_category() {
		return scs_category;
	}
	public void setScs_category(String scs_category) {
		this.scs_category = scs_category;
	}
	@Override
	public String toString() {
		return "CsVo [ucs_idx=" + ucs_idx + ", u_no=" + u_no + ", s_no=" + s_no + ", ucs_title=" + ucs_title
				+ ", ucs_cont=" + ucs_cont + ", uw_date=" + uw_date + ", ucs_img=" + ucs_img + ", res_date=" + res_date
				+ ", response=" + response + ", ucs_category=" + ucs_category + ", u_id=" + u_id + ", s_id=" + s_id
				+ ", scs_idx=" + scs_idx + ", scs_title=" + scs_title + ", scs_cont=" + scs_cont + ", sw_date="
				+ sw_date + ", scs_img=" + scs_img + ", scs_category=" + scs_category + "]";
	}
	
	public CsVo() {}
	public CsVo(int ucs_idx, int u_no, int s_no, String ucs_title, String ucs_cont, Date uw_date, String ucs_img,
			Date res_date, String response, String ucs_category, String u_id, String s_id, int scs_idx,
			String scs_title, String scs_cont, Date sw_date, String scs_img, String scs_category) {
		this.ucs_idx = ucs_idx;
		this.u_no = u_no;
		this.s_no = s_no;
		this.ucs_title = ucs_title;
		this.ucs_cont = ucs_cont;
		this.uw_date = uw_date;
		this.ucs_img = ucs_img;
		this.res_date = res_date;
		this.response = response;
		this.ucs_category = ucs_category;
		this.u_id = u_id;
		this.s_id = s_id;
		this.scs_idx = scs_idx;
		this.scs_title = scs_title;
		this.scs_cont = scs_cont;
		this.sw_date = sw_date;
		this.scs_img = scs_img;
		this.scs_category = scs_category;
	}
	
	
	
}
