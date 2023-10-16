package com.green.store.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.store.dao.StoreDao;
import com.green.store.vo.HavingWineVo;
import com.green.store.vo.RegVo;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineVo;
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
      System.out.println(map);
      sqlSession.insert("Store.StoreInsert",  map );      
   }

   // 매장검색
   @Override
   public List<StoreVo> getSnameSearch(String sname_Search) {
      List<StoreVo> snameSearch = sqlSession.selectList("Store.SnameSearch", sname_Search);
        System.out.println(snameSearch);
      return snameSearch;
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
   public List<RegVo> getStoreListSearch(int s_no, String searchKeyword, String searchOption, String kindOption, String amountOption) {
      
      List<RegVo> storeListSearch  =  new ArrayList<>();
      
      Map<String, Object> map  =  new HashMap<>();
      map.put("s_no", s_no);
      map.put("searchKeyword", searchKeyword);
      map.put("kindOption", kindOption);
      
      if("All".equals(searchOption)) {
         storeListSearch  =  sqlSession.selectList("Store.WineList", map);   
      } else if("w_name".equals(searchOption)) {
         storeListSearch  =  sqlSession.selectList("Store.GetName", map);
      } else if ("w_location".equals(searchOption)) {
         storeListSearch  =  sqlSession.selectList("Store.GetLocation", map);
      } else if ("w_vintage".equals(searchOption)) {
         storeListSearch  =  sqlSession.selectList("Store.GetVintage", map);
      }
      
      if("w_kind".equals(kindOption)) {
         if("PORT".equals(kindOption)) {
            storeListSearch  =  sqlSession.selectList("Store.Port", map);
         } else if("DESSERT".equals(kindOption)) {
            storeListSearch  =  sqlSession.selectList("Store.Dessert", map);
         } else if("RED".equals(kindOption)) {
            storeListSearch  =  sqlSession.selectList("Store.Red", map);
         } else if("ROSE".equals(kindOption)) {
            storeListSearch  =  sqlSession.selectList("Store.Rose", map);
         }else if("WHITE".equals(kindOption)) {
            storeListSearch  =  sqlSession.selectList("Store.White", map);
         }else if("SPARKLING".equals(kindOption)) {
            storeListSearch  =  sqlSession.selectList("Store.Sparkling", map);
         }
      }
      
      if("choose".equals(amountOption)) {
         if("w_amount".equals(amountOption)) {
            storeListSearch  =  sqlSession.selectList("Store.GetAmount",map);
         } else if("w_amountDown".equals(amountOption)) {
            storeListSearch  =  sqlSession.selectList("Store.GetAmountDown", map);
         }
      }
      
      
      return storeListSearch;
   }
   
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
		
		sqlSession.update("Store.StoreUpdate", map );
		
	}
      

   } 
   
   

   
