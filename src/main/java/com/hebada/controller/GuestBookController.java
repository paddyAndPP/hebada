package com.hebada.controller;

import com.hebada.request.GuestBookRequest;
import com.hebada.service.GuestBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by aiiajj on 2016/12/10.
 */
@Controller
@RequestMapping("guestBook")
public class GuestBookController {

    @Autowired
    private GuestBookService guestBookService;


    @RequestMapping("/guestBookList")
    public ModelAndView guestBookList(){
        return new ModelAndView("guestBook/guestBookList");
    }

    @RequestMapping("/getGuestBookList")
    public @ResponseBody String getGuestBookList(GuestBookRequest gbr){
        System.out.println(gbr.toString());
        return guestBookService.findByPage(gbr);
    }

}
