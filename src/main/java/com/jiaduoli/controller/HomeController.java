package com.jiaduoli.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by paddy.luo on 2016/12/18.
 */
@Controller
public class HomeController {

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String index() {
        return "jiaduoli/index";
    }
}
