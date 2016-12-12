package com.hebada.service;

import com.hebada.constant.Punctuation;
import com.hebada.exception.MaxSizeException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.util.*;

/**
 * Created by paddy.luo on 2016/12/10.
 */
@Service
public class ImageService {

    private static final int DEFAULT_FILE_SIZE = 3 * 1024 * 1024;
    private static Logger logger = LoggerFactory.getLogger(ImageService.class);


    public List<String> uploadFiles(Map<String, MultipartFile> fileMap, String path) {
        if(CollectionUtils.isEmpty(fileMap)) return Collections.emptyList();
        List<String> filePaths = new ArrayList<>(fileMap.size());
        if(!new File(path).exists())
            new File(path).mkdirs();
        for(Map.Entry<String, MultipartFile> fileEntry : fileMap.entrySet()) {
            MultipartFile file = fileEntry.getValue();
            if(file.isEmpty()) continue;
            try {
                validFileSize(file.getSize());
                String url = save(file.getInputStream(), getFileUrl(path, file.getContentType()));
                if(StringUtils.hasText(url)) filePaths.add(url);
            } catch (IOException e) {
                logger.error("上传图片获取错误");
            }
        }
        return filePaths;
    }

    private String getFileUrl(String path, String fileType) {
        return path + File.separator + UUID.randomUUID().toString() + Punctuation.DOT + fileType.split(Punctuation.SLASH)[1];
    }

    private void validFileSize(long size) {
        if(size > DEFAULT_FILE_SIZE) throw new MaxSizeException();
    }

    private String save(InputStream source, String path) {
        if(source == null) return null;
        FileOutputStream out = null;
        try {
            out  = new FileOutputStream(path);
            byte[] bytes = new byte[1024];
            int len;
            while((len = source.read(bytes)) != -1) {
                out.write(bytes,0, len);
            }
            return path;
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("图片保存异常");
        } finally {
            try{
                if(null!=out){
                    out.close();
                }
                if(null!=source){
                    source.close();
                }
            }catch(Exception e){
                e.printStackTrace();
            }
        }
        return null;
    }

    public static void main(String[] args) {
               ;
    }
}
