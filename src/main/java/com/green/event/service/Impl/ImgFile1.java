
package com.green.event.service.Impl;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.green.event.vo.EventVo;
import com.green.event.vo.FilesVo;
import com.green.store.service.impl.CheckFileName;

public class ImgFile1 {

    public static void save(HashMap<String, Object> map, HttpServletRequest request) {
        // 자료실에 파일이 저장될 경로(디렉토리) 지정 없으면 생성
        String filePath = "C:\\Users\\GGG\\git\\PrjWine\\src\\main\\webapp\\WEB-INF\\resources\\img\\";
        File dir = new File(filePath);
        if (!dir.exists()) {
            dir.mkdir(); // make directory
        }

        // 넘어온 파일 저장(d:\\upload\\) 처리 - 중복파일 처리
        CheckFileName checkFile = new CheckFileName();
        
        // 파일 저장
        MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;
        
        // 넘어온 파일을 한개씩 반복 처리
        Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
        
        MultipartFile multipartFile = null;
        
        List<FilesVo>  fileList      = new ArrayList<>();
        
        String e_imgname    = null;
        String orgFileName  = null;
        String e_imgext     = null;
        String sFilename    = null;

        while( iterator.hasNext() ) {
			multipartFile = multipartHttpServletRequest.getFile( iterator.next() );
			
			if( !multipartFile.isEmpty() ) {
				e_imgname     =  multipartFile.getOriginalFilename(); // 손.흥민.jpg
				orgFileName  =  e_imgname.substring(0, e_imgname.lastIndexOf('.'));   // 손.흥민  
				e_imgext      =  e_imgname.substring( e_imgname.lastIndexOf('.') );   // .jpg  
				
				// 손.흥민.jpg 있으면   손.흥민1.jpg 리턴
				// 중복파일이 존재하면  파일명을 변경하여 리턴
				sFilename    =  checkFile.getCheckFileName(
					filePath, orgFileName, e_imgext	);   
				
				FilesVo  vo   = new FilesVo(0, 0, e_imgname, e_imgext, sFilename);
				fileList.add( vo );
				
				//  파일 저장
				File     file = new File( filePath + sFilename ); 
				try {
					multipartFile.transferTo( file );     // 실제 파일 저장
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}  
				
			}  // if end
			
		}  //hwile end
		System.out.println("map1 : " + map);
		String e_fimg = fileList.get(0).getSfilename(); 
		String e_bimg = fileList.get(1).getSfilename(); 
		map.put("e_fimg", e_fimg);
		map.put("e_bimg", e_bimg);
		System.out.println("map2 : " + map);
	} 
        
}
