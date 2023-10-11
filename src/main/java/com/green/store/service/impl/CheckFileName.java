package com.green.store.service.impl;

import java.io.File;

public class CheckFileName {
 
		
	public String getCheckFileName(
			String filePath, String orgFileName, String s_imgExt) {
		
		boolean   isCheck         =  true;
		String    returnFileName  =  null;
		
		String    fullFilePath    =  null;
		File      file            =  null;
		
		String    s_fileName        =  orgFileName;
		
		int i = 0;
		while( isCheck ) {
			fullFilePath  =  filePath  + s_fileName + s_imgExt;
			
			file          =  new File(  fullFilePath ); 
			if( file.exists() ) {
				i++;
				s_fileName = String.format("%s_%d", orgFileName, i); 
			} else {
				isCheck = false;
			}
		}
		returnFileName  =  s_fileName + s_imgExt;
		System.out.println(returnFileName);
		
		return   returnFileName;
	}

}






