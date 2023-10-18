package com.green.event.vo;

import java.util.Date;

public class EventVo {
	private int e_idx;
	private int s_no;
	private String e_title;
	private String e_fimg;
	private String e_bimg;
	private Date e_sdate;
	private Date e_edate;
	public EventVo() {}
	public EventVo(int e_idx, int s_no, String e_title, String e_fimg, String e_bimg, Date e_sdate, Date e_edate) {
		this.e_idx = e_idx;
		this.s_no = s_no;
		this.e_title = e_title;
		this.e_fimg = e_fimg;
		this.e_bimg = e_bimg;
		this.e_sdate = e_sdate;
		this.e_edate = e_edate;
	}
	public int getE_idx() {
		return e_idx;
	}
	public void setE_idx(int e_idx) {
		this.e_idx = e_idx;
	}
	public int getS_no() {
		return s_no;
	}
	public void setS_no(int s_no) {
		this.s_no = s_no;
	}
	public String getE_title() {
		return e_title;
	}
	public void setE_title(String e_title) {
		this.e_title = e_title;
	}
	public String getE_fimg() {
		return e_fimg;
	}
	public void setE_fimg(String e_fimg) {
		this.e_fimg = e_fimg;
	}
	public String getE_bimg() {
		return e_bimg;
	}
	public void setE_bimg(String e_bimg) {
		this.e_bimg = e_bimg;
	}
	public Date getE_sdate() {
		return e_sdate;
	}
	public void setE_sdate(Date e_sdate) {
		this.e_sdate = e_sdate;
	}
	public Date getE_edate() {
		return e_edate;
	}
	public void setE_edate(Date e_edate) {
		this.e_edate = e_edate;
	}
	@Override
	public String toString() {
		return "EventVo [e_idx=" + e_idx + ", s_no=" + s_no + ", e_title=" + e_title + ", e_fimg=" + e_fimg
				+ ", e_bimg=" + e_bimg + ", e_sdate=" + e_sdate + ", e_edate=" + e_edate + "]";
	}
}
