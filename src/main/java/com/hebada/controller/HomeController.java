package com.hebada.controller;

import com.hebada.constant.URLs;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by paddy.luo on 2016/12/11.
 */
@Controller
public class HomeController extends DefaultController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return URLs.HOME;
    }
}
