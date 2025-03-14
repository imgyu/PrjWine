package com.green.store.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.pds.vo.PdsPagingVo;
import com.green.store.dao.StoreDao;
import com.green.store.vo.HavingWineVo;
import com.green.store.vo.RegVo;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineVo;
import com.green.tasting.vo.TastingVo;
import com.green.user.cart.vo.PaymentVo;
import com.green.user.vo.UserVo;

@Repository("storeDao")
public class StoreDaoImpl implements StoreDao {
   
   @Autowired
   private SqlSession sqlSession;

   //(영태)
      @Override
      public void insertwine(int w_price, int w_amount, int selectedOption, int s_no) {
    	  Map<String, Object> map = new HashMap<>();
    	  map.put("w_price", w_price);
    	  map.put("w_amount", w_amount);
    	  map.put("s_no", s_no);
    	  map.put("selectedOption", selectedOption);
    	  
         sqlSession.insert("Store.InsertWine", map);
      }
   
    //(영태)
      @Override
      public List<RegVo> getSearchList(String searchKeyword, String searchOption, String kindOption) {
          List<RegVo> searchList = new ArrayList<>();
          
          Map<String, Object> map = new HashMap<>();
          map.put("searchKeyword", searchKeyword);
         if ("0".equals(kindOption)) {
            if ("w_name".equals(searchOption)) {
               searchList = sqlSession.selectList("Store.SearchList1", map);
            } else if ("w_location".equals(searchOption)) {
               searchList = sqlSession.selectList("Store.SearchList2", map);
            } else if ("w_vintage".equals(searchOption)) {
               searchList = sqlSession.selectList("Store.SearchList3", map);
            }
         } 
         if ("1".equals(kindOption)) {
            if ("w_name".equals(searchOption)) {
               searchList = sqlSession.selectList("Store.SearchList4", map);
            } else if ("w_location".equals(searchOption)) {
               searchList = sqlSession.selectList("Store.SearchList5", map);
            } else if ("w_vintage".equals(searchOption)) {
               searchList = sqlSession.selectList("Store.SearchList6", map);
            }
         } 
         if ("2".equals(kindOption)) {
            if ("w_name".equals(searchOption)) {
               searchList = sqlSession.selectList("Store.SearchList7", map);
            } else if ("w_location".equals(searchOption)) {
               searchList = sqlSession.selectList("Store.SearchList8", map);
            } else if ("w_vintage".equals(searchOption)) {
               searchList = sqlSession.selectList("Store.SearchList9", map);
            }
         } 
         if ("3".equals(kindOption)) {
            if ("w_name".equals(searchOption)) {
               searchList = sqlSession.selectList("Store.SearchList10", map);
            } else if ("w_location".equals(searchOption)) {
               searchList = sqlSession.selectList("Store.SearchList11", map);
            } else if ("w_vintage".equals(searchOption)) {
               searchList = sqlSession.selectList("Store.SearchList12", map);
            }
         } 
         if ("4".equals(kindOption)) {
            if ("w_name".equals(searchOption)) {
               searchList = sqlSession.selectList("Store.SearchList13", map);
            } else if ("w_location".equals(searchOption)) {
               searchList = sqlSession.selectList("Store.SearchList14", map);
            } else if ("w_vintage".equals(searchOption)) {
               searchList = sqlSession.selectList("Store.SearchList15", map);
            }
         } 
         if ("5".equals(kindOption)) {
            if ("w_name".equals(searchOption)) {
               searchList = sqlSession.selectList("Store.SearchList16", map);
            } else if ("w_location".equals(searchOption)) {
               searchList = sqlSession.selectList("Store.SearchList17", map);
            } else if ("w_vintage".equals(searchOption)) {
               searchList = sqlSession.selectList("Store.SearchList18", map);
            }
         } 
         if ("6".equals(kindOption)) {
            if ("w_name".equals(searchOption)) {
               searchList = sqlSession.selectList("Store.SearchList19", map);
            } else if ("w_location".equals(searchOption)) {
               searchList = sqlSession.selectList("Store.SearchList20", map);
            } else if ("w_vintage".equals(searchOption)) {
               searchList = sqlSession.selectList("Store.SearchList21", map);
            }
         } 
             return searchList;
      }
   
   
   //(병규)
   @Override
   public StoreVo storelogin(StoreVo vo) {
      StoreVo loginVo = sqlSession.selectOne("Store.Storelogin", vo );
      return loginVo;
   }
   
   // (임규)
      @Override
      public List<HavingWineVo> getWineList(HavingWineVo vo) {
         List<HavingWineVo> wineList  =  sqlSession.selectList("Store.WineList",vo);
         return wineList;
      }
      
    // (임규)
    @Override
    public void updateWineList(HavingWineVo havingVo) {
         sqlSession.update("Store.UpdateWineList", havingVo);
         
     }
    
    @Override
      public void deleteWineList(HavingWineVo havingVo) {
         
         sqlSession.delete("Store.DeleteWineList", havingVo);
         
      }
    
    @Override
      public List<HavingWineVo> selectList(HavingWineVo vo) {
         
         List<HavingWineVo> selectList  =  sqlSession.selectList("Store.SelectList", vo);
         
         return selectList;
      }
    
      /*
       * // (민규)
       * 
       * @Override public List<StoreVo> selectstrli( UserVo vo ) { List<StoreVo> strvo
       * = sqlSession.selectList("Store.SelectStoreList", vo); return strvo; } // (민규)
       * 
       * @Override public StoreVo selectstr(StoreVo vo) { StoreVo svo =
       * sqlSession.selectOne("Store.SelectStrVo", vo); return svo; }
       */

   @Override
   public void setJoin(HashMap<String, Object> map) {
	   String s_simgname = (String) map.get("s_simgname");
	   
	   if (s_simgname == null || s_simgname.isEmpty()) {
		   sqlSession.insert("Store.StoreInsert2",  map );      
		} else {
		   sqlSession.insert("Store.StoreInsert",  map );      
		}
	System.out.println(map);
   }

   // 매장리스트
   @Override
   public List<StoreVo> storeList(StoreVo vo) {
      List<StoreVo> storeList = sqlSession.selectList("Store.StoreList", vo); 
      return storeList; }

   // 매장정보
   @Override
   public List<StoreVo> getStoreInfo(StoreVo vo) {
        
      List<StoreVo> storeInfo  =  sqlSession.selectList("Store.GetStoreInfo", vo);
      return storeInfo;
      
   }

   @Override
   public List<RegVo> getStoreListSearch(int s_no, String w_kind ,String searchKeyword, String searchOption) {
      
      List<RegVo> storeListSearch  =  new ArrayList<>();
      
      Map<String, Object> map  =  new HashMap<>();
      
      map.put("s_no", s_no);
      map.put("searchKeyword", searchKeyword);
      map.put("searchOption", searchOption);
      map.put("w_kind", w_kind);
      
      System.out.println(map);
      
      
      if ("All".equals(searchOption) || searchKeyword == null) {
    	  if ("w_kind".equals(w_kind)) {
    		  storeListSearch  =  sqlSession.selectList("Store.AllSearch", map);  
      }   else if (!"w_kind".equals(w_kind)) {
    	  storeListSearch  =  sqlSession.selectList("Store.KindSearch", map);
      }
    
      }
      else if (!"All".equals(searchOption) && searchKeyword != null) {
    	  if("w_kind".equals(w_kind)) {
    		  storeListSearch  =  sqlSession.selectList("Store.OptionSearch", map);
    	  }
    	  else {
    		  storeListSearch  =  sqlSession.selectList("Store.WineSearch", map);
    		  System.out.println("1");
    	  }
      }
      
      return storeListSearch;
   }
    	  
     /* if("All".equals(searchOption) && "w_kind".equals(w_kind)) {
    	  if (searchOption == null)
         storeListSearch  =  sqlSession.selectList("Store.AllSearch", map);   
      } else if ("All".equals(searchOption)){
    	  if (searchOption == null)
         storeListSearch  =  sqlSession.selectList("Store.KindSearch", map);
      } else if ("w_kind".equals(w_kind)){
    	  if (searchOption != null)
          storeListSearch  =  sqlSession.selectList("Store.OptionSearch", map);
       } else {
    	   storeListSearch  =  sqlSession.selectList("Store.WineSearch", map);
       }*/
   
   
   
   // 매장아이디 중복확인
   @Override
	public int idCheck(String s_id) {
		
		int cnt  =  sqlSession.selectOne("Store.IdCheck", s_id);
		
		return cnt;
	}

	@Override
	public List<StoreVo> getStoreCheck(StoreVo vo) {
		
		List<StoreVo> storeCheck  =  sqlSession.selectList("Store.GetStoreCheck", vo);
		
		return storeCheck;
	}

	@Override
	public void storeUpdate(HashMap<String, Object> map) {
		String s_simgname = (String) map.get("s_simgname");
		   
		   if (s_simgname == null || s_simgname.isEmpty()) {
			   sqlSession.update("Store.StoreUpdate2",  map );      
			} else {
			   sqlSession.update("Store.StoreUpdate",  map );      
			}
		System.out.println(map);
	   }
		

	@Override
	public List<PaymentVo> salesHistory(PaymentVo vo) {
		
		List<PaymentVo> salesHistory  =  sqlSession.selectList("Store.SalesHistory", vo);
		
		return salesHistory;
	}

	@Override
	public int countManage(HavingWineVo vo) {
		
		return sqlSession.selectOne("Store.CountManage", vo);
	}

	@Override
	public List<HavingWineVo> wineList2(PdsPagingVo pds, int s_no) {
		
		HashMap<String, Object> map  =  new HashMap<>();
		map.put("s_no", s_no);
		map.put("pds", pds);
		map.put("start", pds.getStart());
		map.put("end", pds.getEnd());
		List<HavingWineVo> wineList2  =  sqlSession.selectList("Store.WineList2", map);
		
		return wineList2;
	}

	@Override
	public int countStore(StoreVo vo) {
		
		return sqlSession.selectOne("Store.CountStore", vo);
	}

	@Override
	public List<StoreVo> storeList2(PdsPagingVo pds) {
		
		List<StoreVo> storeList2  =  sqlSession.selectList("Store.StoreList2", pds);
		
		return storeList2;
	}

	@Override
	public int countSearchStore(String sname_Search) {
		
		return sqlSession.selectOne("Store.CountSearchStore", sname_Search);
	}

	@Override
	public List<StoreVo> snameSearch2(PdsPagingVo pds, String sname_Search) {
		
		HashMap<String, Object> map  =  new HashMap<>();
		map.put("pds", pds);
		map.put("sname_Search", sname_Search);
		map.put("start", pds.getStart());
		map.put("end", pds.getEnd());
		
		List<StoreVo> snameSearch2  =  sqlSession.selectList("Store.SnameSearch2", map);
	
		return snameSearch2;
   }

	@Override
	public void updateShistory(PaymentVo vo) {
		sqlSession.update("Store.UpdateShistory", vo);
	}

   } 
   
   

   
