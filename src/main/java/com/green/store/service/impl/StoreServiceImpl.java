package com.green.store.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.pds.vo.PdsPagingVo;
import com.green.store.dao.StoreDao;
import com.green.store.service.StoreService;
import com.green.store.vo.HavingWineVo;
import com.green.store.vo.RegVo;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineVo;
import com.green.tasting.vo.TastingVo;
import com.green.user.cart.vo.PaymentVo;
import com.green.user.vo.UserVo;

@Service("storeService")
public class StoreServiceImpl implements StoreService {
   
   @Autowired
   private StoreDao storeDao;

   // (영태)
      @Override
      public void insertWine(int w_price, int w_amount,int selectedOption, int s_no) {
         storeDao.insertwine(w_price, w_amount, selectedOption, s_no);
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
   
   // 매장리스트
   @Override
   public List<StoreVo> storeList(StoreVo vo) {
     List<StoreVo> storeList = storeDao.storeList( vo );

         return storeList;
      }
   
   // 매장정보
   @Override
   public List<StoreVo> getStoreInfo(StoreVo vo ) {
           List<StoreVo> getStoreInfo  =  storeDao.getStoreInfo(vo);
      
      return getStoreInfo;
      
   }
   @Override
   public List<RegVo> getStoreListSearch(int s_no, String w_kind, String searchKeyword, String searchOption) {
      List<RegVo> storeListSearch  =  storeDao.getStoreListSearch(s_no, w_kind, searchKeyword, searchOption);
      return storeListSearch;
   }
   
   @Override
	public int idCheck(String s_id) {
		
		int cnt  =  storeDao.idCheck(s_id);
		
		return cnt;
   }

	@Override
	public List<StoreVo> getStoreCheck(StoreVo vo) {
		
		List<StoreVo> storeCheck  =  storeDao.getStoreCheck(vo);
		
		return storeCheck;
	}
	@Override
	public void storeUpdate(HashMap<String, Object> map, HttpServletRequest request) {
		
		ImgFile.save(map, request);
		
		storeDao.storeUpdate(map);
		
	
   }
	@Override
	public List<PaymentVo> salesHistory(PaymentVo vo) {
		
		List<PaymentVo> salesHistory  =  storeDao.salesHistory(vo);
		
		return salesHistory;
	}
	@Override
	public int countManage(HavingWineVo vo) {
		
		return storeDao.countManage(vo);
	}
	@Override
	public List<HavingWineVo> wineList2(PdsPagingVo pds, int s_no) {
		
		List<HavingWineVo> wineList2  =  storeDao.wineList2(pds, s_no);
		
		return wineList2;
	}
	@Override
	public int countStore(StoreVo vo) {
		
		return storeDao.countStore(vo);
	}
	@Override
	public List<StoreVo> storeList2(PdsPagingVo pds) {
		
		List<StoreVo> storeList2  =  storeDao.storeList2(pds);
		
		return storeList2;
	}
	@Override
	public int countSearchStore(String sname_Search) {
		
		return storeDao.countSearchStore(sname_Search);
	}
	@Override
	public List<StoreVo> snameSearch2(PdsPagingVo pds, String sname_Search) {
		
		List<StoreVo> snameSearch2  =  storeDao.snameSearch2(pds, sname_Search);
		
		return snameSearch2;
   }
   
	public void updateShistory(PaymentVo vo) {
		storeDao.updateShistory(vo);
	}
}
   
