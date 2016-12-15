package com.hebada.controller;

import com.hebada.response.AjaxResponse;
import com.hebada.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by aiiajj on 2016/12/15.
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;
    @RequestMapping("/user/addUser")
    public @ResponseBody AjaxResponse addUser(@RequestParam("name") String name,
                         @RequestParam("account") String account,
                         @RequestParam("password") String password,
                         @RequestParam("role_id") int role_id){
        return userService.saveUser(name,account,password,role_id);
    }


    @RequestMapping("/user/updateUser")
    public @ResponseBody boolean updateUser(@RequestParam("id") int id,@RequestParam("name") String name,
                                              @RequestParam("account") String account,
                                              @RequestParam("password") String password,
                                              @RequestParam("role_id") int role_id){
        return userService.update(id,name,account,password,role_id);
    }


    @RequestMapping("/user/userList")
    public ModelAndView userList(){
        return new ModelAndView("user/userList");
    }

    @RequestMapping("/user/getUserList")
    public @ResponseBody String getUserList(@RequestParam("page") int page,
                                            @RequestParam("rows") int rows,
                                            @RequestParam(name="name",required = false,defaultValue = "") String name,
                                            @RequestParam(name="role_id",required = false,defaultValue = "-1") Integer role_id,
                                            @RequestParam(name="status",required = false,defaultValue = "-1") Integer status){

        return userService.findByPage(page,rows,name,role_id,status);
    }

    @RequestMapping("/user/deleteUser")
    public @ResponseBody boolean deleteUser(int id){

        return userService.delete(id);
    }

}
