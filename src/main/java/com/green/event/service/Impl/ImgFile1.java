
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
import com.green.store.service.impl.CheckFileName;

public class ImgFile1 {

    public static void save(HashMap<String, Object> map, HttpServletRequest request) {
        // 자료실에 파일이 저장될 경로(디렉토리) 지정 없으면 생성
        String filePath = "d:\\dev\\data\\";
        File dir = new File(filePath);
        if (!dir.exists()) {
            dir.mkdir(); // make directory
        }

        // 넘어온 파일 저장(d:\\upload\\) 처리 - 중복파일 처리
        CheckFileName checkFile = new CheckFileName();
        
        // 파일 저장
        MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;
        
        // 넘어온 파일을 한개씩 반복 처리
        Iterator<String> fileNames = multipartHttpServletRequest.getFileNames();

        MultipartFile multipartFile = null;
        
        List<EventVo>  fileList      = new ArrayList<>();
        
        String e_imgname    = null;
        String orgFileName  = null;
        String e_imgext     = null;
        String e_fimg       = null;
        String e_bimg       = null;

        while (fileNames.hasNext()) {
            String paramName = fileNames.next();
            multipartFile = multipartHttpServletRequest.getFile(paramName);

            if (multipartFile != null && !multipartFile.isEmpty()) {
            	e_imgname = multipartFile.getOriginalFilename();
                orgFileName = e_imgname.substring(0, e_imgname.lastIndexOf('.'));
                e_imgext = e_imgname.substring( e_imgname.lastIndexOf('.') );
                
                if (paramName.equals("e_fimg")) {
                    e_fimg = checkFile.getCheckFileName(filePath, orgFileName, e_imgext);
                    
                    File file = new File(filePath + e_fimg);
                    try {
                        multipartFile.transferTo(file); // 실제 파일 저장
                    } catch (IllegalStateException | IOException e) {
                        e.printStackTrace();
                    }
                } else if (paramName.equals("e_bimg")) {
                    e_bimg = checkFile.getCheckFileName(filePath, orgFileName, e_imgext);
                    
                    File file = new File(filePath + e_bimg);
                    try {
                        multipartFile.transferTo(file); // 실제 파일 저장
                    } catch (IllegalStateException | IOException e) {
                        e.printStackTrace();
                    }
                }
                
                EventVo vo = new EventVo();
				fileList.add( vo );
            }
        }
        map.put("fileList", fileList);
        System.out.println("map 파일안 : "+map);
    }
}