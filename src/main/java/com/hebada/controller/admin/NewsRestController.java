package com.hebada.controller.admin;

import com.hebada.controller.DefaultRestController;
import com.hebada.entity.News;
import com.hebada.request.NewsRequest;
import com.hebada.response.AjaxResponse;
import com.hebada.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by paddy.luo on 2016/12/14.
 */
@RestController
public class NewsRestController extends DefaultRestController {

    @Autowired
    private NewsService newsService;

    @RequestMapping(value = "/news/save", method = RequestMethod.POST)
    public AjaxResponse save(@Valid @RequestBody NewsRequest request) {
        newsService.save(initNews(request));
        return AjaxResponse.fail();
    }

    @RequestMapping(value = "/news/list", method = RequestMethod.POST)
    public String getUserList(@RequestParam("page") int page,
                       @RequestParam("rows") int rows,
                       @RequestParam(name="title",required = false,defaultValue = "") String title){
        return newsService.findByPage(page,rows,title);
    }

    @RequestMapping(value = "/news", method = RequestMethod.POST)
    public AjaxResponse delete(Integer id) {
        newsService.delete(id);
        return AjaxResponse.success();
    }


    private News initNews(NewsRequest request) {
        News news = new News();
        news.setId(request.getId());
        news.setTitle(request.getTitle());
        news.setTop(request.isTop());
        news.setContent(request.getContent());
        news.setPublish(request.isPublish());
        return news;
    }
}
