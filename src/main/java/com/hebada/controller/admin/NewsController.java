package com.hebada.controller.admin;

import com.hebada.controller.DefaultController;
import com.hebada.entity.News;
import com.hebada.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

/**
 * Created by paddy.luo on 2016/12/14.
 */
@Controller
public class NewsController extends DefaultController {

    @Autowired
    private NewsService newsService;

    @RequestMapping(value = "/news/list", method = RequestMethod.GET)
    public String list(Map<String,Object> model) {
        return "admin/newsList";
    }

    @RequestMapping(value = "/news", method = RequestMethod.GET)
    public ModelAndView get(Map<String, Object> model, @RequestParam(value = "id", required = false) Integer id) {
        if(id != null) {
            News news = newsService.get(id);
            model.put("news", news);
        }
        return new ModelAndView("admin/news", model);
    }
}
