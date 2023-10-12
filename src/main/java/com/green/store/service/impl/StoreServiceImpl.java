package com.green.store.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.store.dao.StoreDao;
import com.green.store.service.StoreService;
import com.green.store.vo.HavingWineVo;
import com.green.store.vo.RegVo;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineVo;
import com.green.user.vo.UserVo;

@Service("storeService")
public class StoreServiceImpl implements StoreService {
	
	@Autowired
	private StoreDao storeDao;

	// (영태)
	   @Override
	   public void insertWine(int selectedOption, int w_amount, int w_price, int s_no, int w_no) {
	      storeDao.insertwine(selectedOption, w_amount, w_price, s_no, w_no);
	   }
	// (영태)
		@Override
		public List<RegVo> searchList(String searchKeyword, String searchOption, String kindOption) {
			List<RegVo> searchList = storeDao.getSearchList(searchKeyword, searchOption, kindOption);
			return searchList;
		}
	
	// (병규)
	@Override
	public StoreVo storelogin(StoreVo vo) {
		StoreVo loginVo = storeDao.storelogin( vo );
		return loginVo;
	}
	
	// (임규)
	@Override
	public List<HavingWineVo> getWineList(HavingWineVo vo) {
	      List<HavingWineVo> wineList  =  storeDao.getWineList(vo);
	      return wineList;
	   }
	
	// (임규)
    @Override
    public void updateWineList(HavingWineVo havingVo) {
	      storeDao.updateWineList(havingVo);
	   }
    
    @Override
	public void deleteWineList(HavingWineVo havingVo) {
		
		storeDao.deleteWineList(havingVo);
		
	}
    
    @Override
	public List<HavingWineVo> selectList(HavingWineVo vo) {
		
		List<HavingWineVo> selectList  =  storeDao.selectList(vo);
		
		return selectList;
	}
    
	@Override
	public void setJoin(HashMap<String, Object> map, HttpServletRequest request) {
	
		ImgFile.save( map, request );		
				
		storeDao.setJoin( map );
		
	}
	
	// 매장리스트 검색
	@Override
	public List<StoreVo> snameSearch(String sname_Search) {
		List<StoreVo> snameSearch = storeDao.getSnameSearch(sname_Search);
		System.out.println(snameSearch);
		return snameSearch;
	}
	
	// 매장리스트
	@Override
	public List<StoreVo> storeList(StoreVo vo) {
	  List<StoreVo> storeList = storeDao.storeList( vo );

			return storeList;
		}
	
	// 매장정보
	@Override
	public List<StoreVo> getStoreInfo(StoreVo vo) {
           List<StoreVo> getStoreInfo  =  storeDao.getStoreInfo(vo);
		
		return getStoreInfo;
		
	}
	@Override
	public List<RegVo> getStoreListSearch(int s_no, String searchKeyword, String searchOption, String kindOption, String amountOption ) {
		List<RegVo> storeListSearch  =  storeDao.getStoreListSearch(s_no, searchKeyword, searchOption, kindOption, amountOption);
		return storeListSearch;
	}
	}
	

