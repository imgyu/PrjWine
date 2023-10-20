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
	private int scs_idx;
	private String scs_title;
	private String scs_cont;
	private Date sw_date;
	private String scs_img;
	private String scs_category;
	
	public CsVo() {}
	public CsVo(int ucs_idx, int u_no, int s_no, String ucs_title, String ucs_cont, Date uw_date, String ucs_img,
			Date res_date, String response, String ucs_category, int scs_idx, String scs_title, String scs_cont,
			Date sw_date, String scs_img, String scs_category) {
		super();
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
		this.scs_idx = scs_idx;
		this.scs_title = scs_title;
		this.scs_cont = scs_cont;
		this.sw_date = sw_date;
		this.scs_img = scs_img;
		this.scs_category = scs_category;
	}
	public synchronized int getUcs_idx() {
		return ucs_idx;
	}
	public synchronized void setUcs_idx(int ucs_idx) {
		this.ucs_idx = ucs_idx;
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
	public synchronized String getUcs_title() {
		return ucs_title;
	}
	public synchronized void setUcs_title(String ucs_title) {
		this.ucs_title = ucs_title;
	}
	public synchronized String getUcs_cont() {
		return ucs_cont;
	}
	public synchronized void setUcs_cont(String ucs_cont) {
		this.ucs_cont = ucs_cont;
	}
	public synchronized Date getUw_date() {
		return uw_date;
	}
	public synchronized void setUw_date(Date uw_date) {
		this.uw_date = uw_date;
	}
	public synchronized String getUcs_img() {
		return ucs_img;
	}
	public synchronized void setUcs_img(String ucs_img) {
		this.ucs_img = ucs_img;
	}
	public synchronized Date getRes_date() {
		return res_date;
	}
	public synchronized void setRes_date(Date res_date) {
		this.res_date = res_date;
	}
	public synchronized String getResponse() {
		return response;
	}
	public synchronized void setResponse(String response) {
		this.response = response;
	}
	public synchronized String getUcs_category() {
		return ucs_category;
	}
	public synchronized void setUcs_category(String ucs_category) {
		this.ucs_category = ucs_category;
	}
	public synchronized int getScs_idx() {
		return scs_idx;
	}
	public synchronized void setScs_idx(int scs_idx) {
		this.scs_idx = scs_idx;
	}
	public synchronized String getScs_title() {
		return scs_title;
	}
	public synchronized void setScs_title(String scs_title) {
		this.scs_title = scs_title;
	}
	public synchronized String getScs_cont() {
		return scs_cont;
	}
	public synchronized void setScs_cont(String scs_cont) {
		this.scs_cont = scs_cont;
	}
	public synchronized Date getSw_date() {
		return sw_date;
	}
	public synchronized void setSw_date(Date sw_date) {
		this.sw_date = sw_date;
	}
	public synchronized String getScs_img() {
		return scs_img;
	}
	public synchronized void setScs_img(String scs_img) {
		this.scs_img = scs_img;
	}
	public synchronized String getScs_category() {
		return scs_category;
	}
	public synchronized void setScs_category(String scs_category) {
		this.scs_category = scs_category;
	}
	@Override
	public String toString() {
		return "CsVo [ucs_idx=" + ucs_idx + ", u_no=" + u_no + ", s_no=" + s_no + ", ucs_title=" + ucs_title
				+ ", ucs_cont=" + ucs_cont + ", uw_date=" + uw_date + ", ucs_img=" + ucs_img + ", res_date=" + res_date
				+ ", response=" + response + ", ucs_category=" + ucs_category + ", scs_idx=" + scs_idx + ", scs_title="
				+ scs_title + ", scs_cont=" + scs_cont + ", sw_date=" + sw_date + ", scs_img=" + scs_img
				+ ", scs_category=" + scs_category + "]";
	}
	
	
	
	
	
}
