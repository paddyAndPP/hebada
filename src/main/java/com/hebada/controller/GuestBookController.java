package com.hebada.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by aiiajj on 2016/12/10.
 */
@Controller
@RequestMapping("guestBook")
public class GuestBookController {

    @RequestMapping("/guestBookList")
    public ModelAndView guestBookList(){
        return new ModelAndView("guestBook/guestBookList");
    }


}
