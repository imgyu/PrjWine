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
import com.green.user.vo.UserVo;

@Repository("storeDao")
public class StoreDaoImpl implements StoreDao {
	
	@Autowired
	private SqlSession sqlSession;

	//(영태)
	   @Override
	   public void insertwine(int selectedOption, int w_amount, int w_price, int s_no, int w_no) {
	      Map<String, Object> map = new HashMap<>();
	      map.put("selectedOption", selectedOption);
	      map.put("w_amount", w_amount);
	      map.put("w_price", w_price);
	      map.put("s_no", s_no);
	      map.put("w_no", w_no);
	      sqlSession.insert("Store.InsertWine", map);
	   }
	
	 //(영태)
	   @Override
	   public List<RegVo> getSearchList(String searchKeyword, String searchOption, String kindOption) {
	       List<RegVo> searchList = new ArrayList<>();
	       
	       Map<String, Object> map = new HashMap<>();
	       map.put("searchKeyword", searchKeyword);
			if ("w_kind".equals(kindOption)) {
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
	public void insertStore(StoreVo vo) {
		System.out.println(vo);
		sqlSession.insert("Store.StoreInsert", vo );
		
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
	 
	 // (민규)
	@Override
	public List<StoreVo> selectstrli( UserVo vo ) {
		List<StoreVo> strvo = sqlSession.selectList("Store.SelectStoreList", vo);
		return strvo;
	}
	 // (민규)
	@Override
	public StoreVo selectstr(StoreVo vo) {
		StoreVo svo = sqlSession.selectOne("Store.SelectStrVo", vo);
		return svo;
	}
	

}
