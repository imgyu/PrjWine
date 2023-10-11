
package com.green.store.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.green.store.vo.StoreVo;

public class ImgFile {

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

        String s_imgname   = null;
        String orgFileName = null;
        String s_imgext    = null;
        String s_simgname  = null; // 저장된 실제 파일명

        // 파일 정보를 저장할 리스트 생성
        List<MultipartFile> fileList = new ArrayList<>();

        // 넘어온 파일을 한개씩 반복 처리
        Iterator<String> fileNames = multipartHttpServletRequest.getFileNames();
        while (fileNames.hasNext()) {
            String paramName = fileNames.next();
            multipartFile = multipartHttpServletRequest.getFile(paramName);

            if (multipartFile != null && !multipartFile.isEmpty()) {
            	s_imgname = multipartFile.getOriginalFilename();
                orgFileName = s_imgname.substring(0, s_imgname.lastIndexOf('.'));
                s_imgext = s_imgname.substring( s_imgname.lastIndexOf('.') );
                s_simgname = checkFile.getCheckFileName(filePath, orgFileName, s_imgext);


                // 파일 저장
                File file = new File(filePath + s_imgname);
                try {
                    multipartFile.transferTo(file); // 실제 파일 저장
                } catch (IllegalStateException | IOException e) {
                    e.printStackTrace();
                }
                map.put("s_imgname", s_imgname);
                map.put("s_imgext", s_imgext);
                map.put("s_simgname", s_simgname);
            }
        }

        map.put("fileList", fileList);
        
        System.out.println(fileList);
    }
}