package com.hebada.controller.image;

import com.hebada.controller.DefaultRestController;
import com.hebada.response.AjaxResponse;
import com.hebada.service.ImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.util.List;

/**
 * Created by paddy.luo on 2016/12/10.
 */
@Controller
public class ImageController extends DefaultRestController{

    @Autowired
    private ImageService imageService;

    @RequestMapping(value = "/image/upload", method = RequestMethod.POST)
    public AjaxResponse upload(MultipartHttpServletRequest request) {
        List<String> imageUrls =  imageService.uploadFiles(request.getFileMap(), "D:/image");
        if(CollectionUtils.isEmpty(imageUrls)) return AjaxResponse.success().with(imageUrls);
        return AjaxResponse.fail();

    }


}
