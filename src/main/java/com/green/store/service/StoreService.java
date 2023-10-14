package com.green.store.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.green.store.vo.HavingWineVo;
import com.green.store.vo.RegVo;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineVo;
import com.green.user.vo.UserVo;

public interface StoreService {

   // (영태)
   void insertWine(RegVo vo);

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

   List<StoreVo> snameSearch(String sname_Search);

   List<StoreVo> storeList(StoreVo vo);

   List<StoreVo> getStoreInfo(StoreVo vo);

   // 매장이름검색기능


   List<RegVo> getStoreListSearch(int s_no, String searchKeyword, String searchOption, String kindOption, String amountOption);




}