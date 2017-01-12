package com.jiaduoli.controller;

import com.hebada.entity.News;
import com.hebada.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by paddy.luo on 2017/1/11.
 */
@Controller
public class FrontNewsController {

    @Autowired
    private NewsService newsService;

    @RequestMapping(value = "/jdl/news/detail/{id}",method = RequestMethod.GET)
    public String get(@PathVariable("id") Integer id, ModelMap model) {
        News news = newsService.get(id);
        model.put("news", news);
        return "jiaduoli/news/news.detail";
    }
}
