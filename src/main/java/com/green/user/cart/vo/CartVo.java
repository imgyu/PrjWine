package com.green.user.cart.vo;

public class CartVo {
   //Field
   
   public int    u_no;
   public int    c_idx;
   public String w_name;
   public String s_name;
   public String c_count;
   public String w_price;
   public String c_allprice;
   
   public CartVo() {}
   public CartVo(int u_no, int c_idx, String w_name, String s_name, String c_count, String w_price,
         String c_allprice) {
      this.u_no = u_no;
      this.c_idx = c_idx;
      this.w_name = w_name;
      this.s_name = s_name;
      this.c_count = c_count;
      this.w_price = w_price;
      this.c_allprice = c_allprice;
   }
   public int getU_no() {
      return u_no;
   }
   public void setU_no(int u_no) {
      this.u_no = u_no;
   }
   public int getC_idx() {
      return c_idx;
   }
   public void setC_idx(int c_idx) {
      this.c_idx = c_idx;
   }
   public String getW_name() {
      return w_name;
   }
   public void setW_name(String w_name) {
      this.w_name = w_name;
   }
   public String getS_name() {
      return s_name;
   }
   public void setS_name(String s_name) {
      this.s_name = s_name;
   }
   public String getC_count() {
      return c_count;
   }
   public void setC_count(String c_count) {
      this.c_count = c_count;
   }
   public String getW_price() {
      return w_price;
   }
   public void setW_price(String w_price) {
      this.w_price = w_price;
   }
   public String getC_allprice() {
      return c_allprice;
   }
   public void setC_allprice(String c_allprice) {
      this.c_allprice = c_allprice;
   }
   @Override
   public String toString() {
      return "CartVo [u_no=" + u_no + ", c_idx=" + c_idx + ", w_name=" + w_name + ", s_name=" + s_name + ", c_count="
            + c_count + ", w_price=" + w_price + ", c_allprice=" + c_allprice + "]";
   }
   
   
   

}