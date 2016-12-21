package com.jiaduoli.controller;

import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by paddy.luo on 2016/12/21.
 */
@Controller
public class BaseController {

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String index() {
        return "jiaduoli/index";
    }
}
