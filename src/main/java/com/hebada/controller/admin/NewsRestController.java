package com.hebada.controller.admin;

import com.hebada.controller.DefaultRestController;
import com.hebada.entity.News;
import com.hebada.repository.PageResults;
import com.hebada.request.NewsRequest;
import com.hebada.response.AjaxResponse;
import com.hebada.response.NewsListResult;
import com.hebada.service.NewsService;
import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

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
        return AjaxResponse.success();
    }

    @RequestMapping(value = "/news/list", method = RequestMethod.POST)
    public PageResults getUserList(@RequestParam("page") int page,
                                   @RequestParam("rows") int rows,
                                   @RequestParam(name="title",required = false,defaultValue = "") String title){
        PageResults newsPageResult = newsService.findByPage(page, rows, title);
        if(newsPageResult.getTotal() > 0) {
            List<NewsListResult> results = new ArrayList<>();
            for(Object o :  newsPageResult.getRows()) {
                News news = (News) o;
                NewsListResult result = new NewsListResult();
                result.setId(news.getId());
                result.setTitle(result.getTitle());
                result.setContent(news.getContent());
                result.setTop(news.isTop());
                DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
                if(news.getPublishTime() != null)
                    result.setPublishTime(sdf.format(news.getPublishTime()));
                results.add(result);
            }
            newsPageResult.setRows(results);
        }
        return newsPageResult;
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
