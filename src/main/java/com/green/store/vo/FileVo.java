package com.green.store.vo;

public class FileVo {
	private  String   s_imgname;
	private  String   s_imgext;
	private  String   s_simgname;
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
		return "FileVo [s_imgname=" + s_imgname + ", s_imgext=" + s_imgext + ", s_simgname=" + s_simgname + "]";
	}
	
	public FileVo() {}
	public FileVo(String s_imgname, String s_imgext, String s_simgname) {
		super();
		this.s_imgname = s_imgname;
		this.s_imgext = s_imgext;
		this.s_simgname = s_simgname;
	}
	
	

}
