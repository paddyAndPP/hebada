package com.hebada.controller.image;

import com.hebada.controller.DefaultRestController;
import com.hebada.response.AjaxResponse;
import com.hebada.service.ImageService;
import com.hebada.vo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.util.List;

/**
 * Created by paddy.luo on 2016/12/10.
 */
@RestController
public class ImageController extends DefaultRestController{

    @Autowired
    private ImageService imageService;

    @RequestMapping(value = "/image/upload", method = RequestMethod.POST)
    public AjaxResponse upload(MultipartHttpServletRequest request) {
        List<String> imageUrls =  imageService.uploadFiles(request.getFileMap(), "D:/news");
        if(CollectionUtils.isEmpty(imageUrls)) return AjaxResponse.success().with(imageUrls);
        return AjaxResponse.fail();
    }

    @RequestMapping(value = "/image/upload/single", method = RequestMethod.POST)
    public Result uploadSingle(MultipartHttpServletRequest request) {
        String filePath = request.getServletContext().getRealPath("/") + "image/news";
        List<String> imageNames =  imageService.uploadFiles(request.getFileMap(), filePath);
        if(!CollectionUtils.isEmpty(imageNames)) return Result.success().addUrl(buildURL(request.getServerName(), request.getServerPort(),request.getServletContext().getContextPath()) + imageNames.get(0));
        return Result.fail().message("上传文件失败");
    }

    private String buildURL(String host, int port, String uri) {
        return "HTTP://" + host + ":" + port + uri + "/image/news/";
    }

}
