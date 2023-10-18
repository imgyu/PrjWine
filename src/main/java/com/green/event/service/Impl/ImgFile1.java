
package com.green.event.service.Impl;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

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

        MultipartFile multipartFile = null;

        String e_imgname1   = null;
        String orgFileName1 = null;
        String e_imgext1    = null;
        String e_fimg       = null; // 저장된 실제 파일명

        // 넘어온 파일을 한개씩 반복 처리
        Iterator<String> fileNames = multipartHttpServletRequest.getFileNames();
        while (fileNames.hasNext()) {
            String paramName = fileNames.next();
            multipartFile = multipartHttpServletRequest.getFile(paramName);

            if (multipartFile != null && !multipartFile.isEmpty()) {
            	e_imgname1 = multipartFile.getOriginalFilename();
                orgFileName1 = e_imgname1.substring(0, e_imgname1.lastIndexOf('.'));
                e_imgext1 = e_imgname1.substring( e_imgname1.lastIndexOf('.') );
                e_fimg = checkFile.getCheckFileName(filePath, orgFileName1, e_imgext1);


                // 파일 저장
                File file = new File(filePath + e_fimg);
                try {
                    multipartFile.transferTo(file); // 실제 파일 저장
                } catch (IllegalStateException | IOException e) {
                    e.printStackTrace();
                }
                map.put("e_imgname1", e_imgname1);
                map.put("e_imgext1", e_imgext1);
                map.put("e_fimg", e_fimg);
            }
        }
        System.out.println("map 파일안 : "+map);
    }
}