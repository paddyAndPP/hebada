package com.hebada.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.hebada.constant.URLs;
import com.hebada.entity.User;
import com.hebada.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by paddy.luo on 2016/12/4.
 */
@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/default/login", method = RequestMethod.GET)
    public String login() {
        return URLs.LOGIN;
    }

    @RequestMapping("/default/doLogin")
    public @ResponseBody String doLogin(@RequestParam String account, @RequestParam String password){
        System.out.println("in doLogin function...");
        boolean isLogin = userService.login(account, password);
        if(isLogin){
            //HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
            //HttpSession session = request.getSession();
            //session.setMaxInactiveInterval(1800);
            //session.setAttribute("user", user);
            return "login_success";
        }
        return "login_error";
    }

    @RequestMapping("/admin/index")
    public ModelAndView index(){
        return new ModelAndView(URLs.INDEX);
    }

    @RequestMapping("/admin/home")
    public ModelAndView home(){
        return new ModelAndView("admin/home");
    }

}
