package com.hebada.service;

import com.hebada.exception.MaxSizeException;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
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
            try {
                validFileSize(file.getSize());
                String url = save(file.getInputStream(), path + file.getName());
                if(StringUtils.hasText(url)) filePaths.add(url);
            } catch (IOException e) {
                logger.error("上传图片获取错误");
            }
        }
        return filePaths;
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
            IOUtils.closeQuietly(source,out);
        }
        return null;
    }

    public static void main(String[] args) {

    }
}
