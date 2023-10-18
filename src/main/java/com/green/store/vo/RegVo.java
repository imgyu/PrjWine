package com.green.store.vo;

public class RegVo {
   private int s_no;
   private int w_no;
   private String w_name;
   private String w_location;
   private String w_vintage;
   private String w_kind;
   private String w_image;
   private String w_wineery;
   private int w_amount;
   private int w_price;
   private int wl_idx;
   private int u_no;
   private String  s_address;
   private String  s_detailAddress;
   private String s_name;
   
    public RegVo() {}   
    public RegVo(int s_no, int w_no, String w_name, String w_location, String w_vintage, String w_kind, String w_image,
		String w_wineery, int w_amount, int w_price, int wl_idx, int u_no, String s_address, String s_detailAddress,
		String s_name) {
	super();
	this.s_no = s_no;
	this.w_no = w_no;
	this.w_name = w_name;
	this.w_location = w_location;
	this.w_vintage = w_vintage;
	this.w_kind = w_kind;
	this.w_image = w_image;
	this.w_wineery = w_wineery;
	this.w_amount = w_amount;
	this.w_price = w_price;
	this.wl_idx = wl_idx;
	this.u_no = u_no;
	this.s_address = s_address;
	this.s_detailAddress = s_detailAddress;
	this.s_name = s_name;
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
public synchronized String getW_name() {
	return w_name;
}
public synchronized void setW_name(String w_name) {
	this.w_name = w_name;
}
public synchronized String getW_location() {
	return w_location;
}
public synchronized void setW_location(String w_location) {
	this.w_location = w_location;
}
public synchronized String getW_vintage() {
	return w_vintage;
}
public synchronized void setW_vintage(String w_vintage) {
	this.w_vintage = w_vintage;
}
public synchronized String getW_kind() {
	return w_kind;
}
public synchronized void setW_kind(String w_kind) {
	this.w_kind = w_kind;
}
public synchronized String getW_image() {
	return w_image;
}
public synchronized void setW_image(String w_image) {
	this.w_image = w_image;
}
public synchronized String getW_wineery() {
	return w_wineery;
}
public synchronized void setW_wineery(String w_wineery) {
	this.w_wineery = w_wineery;
}
public synchronized int getW_amount() {
	return w_amount;
}
public synchronized void setW_amount(int w_amount) {
	this.w_amount = w_amount;
}
public synchronized int getW_price() {
	return w_price;
}
public synchronized void setW_price(int w_price) {
	this.w_price = w_price;
}
public synchronized int getWl_idx() {
	return wl_idx;
}
public synchronized void setWl_idx(int wl_idx) {
	this.wl_idx = wl_idx;
}
public synchronized int getU_no() {
	return u_no;
}
public synchronized void setU_no(int u_no) {
	this.u_no = u_no;
}
public synchronized String getS_address() {
	return s_address;
}
public synchronized void setS_address(String s_address) {
	this.s_address = s_address;
}
public synchronized String getS_detailAddress() {
	return s_detailAddress;
}
public synchronized void setS_detailAddress(String s_detailAddress) {
	this.s_detailAddress = s_detailAddress;
}
public synchronized String getS_name() {
	return s_name;
}
public synchronized void setS_name(String s_name) {
	this.s_name = s_name;
}
@Override
public String toString() {
	return "RegVo [s_no=" + s_no + ", w_no=" + w_no + ", w_name=" + w_name + ", w_location=" + w_location
			+ ", w_vintage=" + w_vintage + ", w_kind=" + w_kind + ", w_image=" + w_image + ", w_wineery=" + w_wineery
			+ ", w_amount=" + w_amount + ", w_price=" + w_price + ", wl_idx=" + wl_idx + ", u_no=" + u_no
			+ ", s_address=" + s_address + ", s_detailAddress=" + s_detailAddress + ", s_name=" + s_name + "]";
}
  
  
  
}