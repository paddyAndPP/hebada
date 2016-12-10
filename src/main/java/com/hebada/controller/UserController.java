package com.hebada.controller;

import com.hebada.entity.User;
import com.hebada.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


/**
 * Created by MrLuo on 2016/10/8.
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/user/save", method = RequestMethod.GET)
    @ResponseBody
    public String save() {
        return "save";
    }
}
