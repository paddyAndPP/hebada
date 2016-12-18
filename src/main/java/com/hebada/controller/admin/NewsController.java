package com.hebada.controller.admin;

import com.hebada.controller.DefaultController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

/**
 * Created by paddy.luo on 2016/12/14.
 */
@Controller
public class NewsController extends DefaultController {

    @RequestMapping(value = "/news", method = RequestMethod.GET)
    public String add() {
        return "admin/news";
    }

    @RequestMapping(value = "/news/list", method = RequestMethod.GET)
    public String list(Map<String,Object> model) {
        return "admin/newsList";
    }
}
