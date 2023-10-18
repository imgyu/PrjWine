package com.green.store.vo;

public class WineVo {
	
	private int w_no;
	private String w_wineery;
	private String w_name;
	private String w_reviews;
	private String w_avg;
	private String w_location;
	private String w_image;
	private String w_vintage;
	private String w_kind;
	
	public WineVo() {}
	public WineVo(int w_no, String w_wineery, String w_name, String w_reviews, String w_avg, String w_location,
			String w_image, String w_vintage, String w_kind) {
		this.w_no = w_no;
		this.w_wineery = w_wineery;
		this.w_name = w_name;
		this.w_reviews = w_reviews;
		this.w_avg = w_avg;
		this.w_location = w_location;
		this.w_image = w_image;
		this.w_vintage = w_vintage;
		this.w_kind = w_kind;
	}
	public synchronized int getW_no() {
		return w_no;
	}
	public synchronized void setW_no(int w_no) {
		this.w_no = w_no;
	}
	public synchronized String getW_wineery() {
		return w_wineery;
	}
	public synchronized void setW_wineery(String w_wineery) {
		this.w_wineery = w_wineery;
	}
	public synchronized String getW_name() {
		return w_name;
	}
	public synchronized void setW_name(String w_name) {
		this.w_name = w_name;
	}
	public synchronized String getW_reviews() {
		return w_reviews;
	}
	public synchronized void setW_reviews(String w_reviews) {
		this.w_reviews = w_reviews;
	}
	public synchronized String getW_avg() {
		return w_avg;
	}
	public synchronized void setW_avg(String w_avg) {
		this.w_avg = w_avg;
	}
	public synchronized String getW_location() {
		return w_location;
	}
	public synchronized void setW_location(String w_location) {
		this.w_location = w_location;
	}
	public synchronized String getW_image() {
		return w_image;
	}
	public synchronized void setW_image(String w_image) {
		this.w_image = w_image;
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
	@Override
	public String toString() {
		return "WineVo [w_no=" + w_no + ", w_wineery=" + w_wineery + ", w_name=" + w_name + ", w_reviews=" + w_reviews
				+ ", w_avg=" + w_avg + ", w_location=" + w_location + ", w_image=" + w_image + ", w_vintage="
				+ w_vintage + ", w_kind=" + w_kind + "]";
	}
	
	
	
	
	
}
