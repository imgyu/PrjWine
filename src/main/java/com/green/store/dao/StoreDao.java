package com.green.store.dao;

import java.util.HashMap;
import java.util.List;

import com.green.pds.vo.PdsPagingVo;
import com.green.store.vo.HavingWineVo;
import com.green.store.vo.RegVo;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineVo;
import com.green.tasting.vo.TastingVo;
import com.green.user.cart.vo.PaymentVo;
import com.green.user.vo.UserVo;

public interface StoreDao {
   // (영태)
   void insertwine(int w_price, int w_amount, int selectedOption, int s_no);
   
   // (영태)
   List<RegVo> getSearchList(String searchKeyword, String searchOption, String kindOption);
   
   // (병규)
   StoreVo storelogin(StoreVo vo);
   // (임규)
   List<HavingWineVo> getWineList(HavingWineVo vo);
   // (임규)
   void updateWineList(HavingWineVo havingVo);
   
   void deleteWineList(HavingWineVo havingVo);
   
   List<HavingWineVo> selectList(HavingWineVo vo);   

   void setJoin(HashMap<String, Object> map);

   List<StoreVo> storeList(StoreVo vo);

   List<StoreVo> getStoreInfo(StoreVo vo);
   
   List<RegVo> getStoreListSearch(int s_no, String w_kind ,String searchKeyword, String searchOption);

   int idCheck(String s_id);

   List<StoreVo> getStoreCheck(StoreVo vo);

   void storeUpdate(HashMap<String, Object> map);

   List<PaymentVo> salesHistory(PaymentVo vo);

   int countManage(HavingWineVo vo);

   List<HavingWineVo> wineList2(PdsPagingVo pds, int s_no);

   int countStore(StoreVo vo);

   List<StoreVo> storeList2(PdsPagingVo pds);

   int countSearchStore(String sname_Search);

   List<StoreVo> snameSearch2(PdsPagingVo pds, String sname_Search);

   void updateShistory(PaymentVo vo);


}