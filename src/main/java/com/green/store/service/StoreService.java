package com.green.store.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.green.pds.vo.PdsPagingVo;
import com.green.store.vo.HavingWineVo;
import com.green.store.vo.RegVo;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineVo;
import com.green.tasting.vo.TastingVo;
import com.green.user.cart.vo.PaymentVo;
import com.green.user.vo.UserVo;

public interface StoreService {

   // (영태)
   void insertWine(int w_price, int w_amount, int selectedOption, int s_no);

   // (영태)
   List<RegVo> searchList(String searchOption, String kindOption, String searchKeyword);

   // (병규)
   StoreVo storelogin(StoreVo vo);
   
   // (임규)
   List<HavingWineVo> getWineList(HavingWineVo vo);

   // (임규)
   void updateWineList(HavingWineVo havingVo);
   
   // (임규)
   void deleteWineList(HavingWineVo havingVo);
   
   // (임규)
   List<HavingWineVo> selectList(HavingWineVo vo);
   
   void setJoin(HashMap<String, Object> map, HttpServletRequest request);

   List<StoreVo> storeList(StoreVo vo);

   List<StoreVo> getStoreInfo(StoreVo vo);

   // 매장이름검색기능


   List<RegVo> getStoreListSearch(int s_no, String w_kind, String searchKeyword, String searchOption);

   int idCheck(String s_id);

   List<StoreVo> getStoreCheck(StoreVo vo);

   void storeUpdate(HashMap<String, Object> map, HttpServletRequest request);

   List<PaymentVo> salesHistory(PaymentVo vo);

   int countManage(HavingWineVo vo);

   List<HavingWineVo> wineList2(PdsPagingVo pds, int s_no);

   int countStore(StoreVo vo);

   List<StoreVo> storeList2(PdsPagingVo pds);

   int countSearchStore(String sname_Search);

   List<StoreVo> snameSearch2(PdsPagingVo pds, String sname_Search);

   void updateShistory(PaymentVo vo);

}