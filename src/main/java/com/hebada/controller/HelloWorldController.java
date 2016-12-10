package com.hebada.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 * Created by MrLuo on 2016/9/24.
 */

@Controller
public class HelloWorldController {

    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    @ResponseBody
    public String sayHello(ModelMap model) {
       return "OK";
    }

    @RequestMapping(value = "springmvc", method = RequestMethod.GET)
    @ResponseBody
    public String saySpringMvc(ModelMap model) {
        return "Hello spring springmvc java config";
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(ModelMap model) {
        return "index";
    }

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String admin(){
        return "admin/index";
    }
}

