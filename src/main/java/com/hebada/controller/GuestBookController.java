package com.hebada.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.hebada.entity.GuestBook;
import com.hebada.request.GuestBookRequest;
import com.hebada.service.GuestBookService;
import org.apache.commons.collections.map.HashedMap;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * Created by aiiajj on 2016/12/10.
 */
@Controller
@RequestMapping("guestBook")
public class GuestBookController {

    @Autowired
    private GuestBookService guestBookService;


    @RequestMapping("/guestBookList")
    @ResponseBody
    public ModelAndView guestBookList(){
        return new ModelAndView("guestBook/guestBookList");
    }

    //@RequiresRoles("manager")
    @RequestMapping("/getGuestBookList")
    public @ResponseBody String getGuestBookList(HttpServletRequest request)throws Exception{
        String pageStr = request.getParameter("page");
        int page = (null==pageStr||"".equals(pageStr))?1:Integer.parseInt(pageStr);
        String rowsStr = request.getParameter("rows");
        int rows = (null==rowsStr||"".equals(rowsStr))?20:Integer.parseInt(rowsStr);
        Map<String,Object> param = new HashedMap();
        String name = request.getParameter("name");
        if(null!=name&&!"".equals(name)){
            param.put("name",name);
        }
        String statusStr = request.getParameter("status");
        Integer status = null;
        System.out.println("statusStr="+statusStr);
        if(null!=statusStr&&!"".equals(statusStr)){
            System.out.println("1");
            if(statusStr.matches("[0-9]")){
                System.out.println("2");
                status = Integer.parseInt(statusStr);
                System.out.println("3");
                if(status>=0){
                    param.put("status",status);
                }
            }
        }
        System.out.println("page="+page+" rows="+rowsStr);
        System.out.println("name="+name+" status="+status);
        return guestBookService.findByPage(page,rows,name,status);
    }

    @RequestMapping("/deleteGuestBook")
    public @ResponseBody boolean deleteGuestBook(int id){
        return guestBookService.delete(id);
    }

    @RequestMapping("/followGuestBook")
    public @ResponseBody boolean updateGuestBook(int id , String status , String note){
        if(status.matches("[0-9]*")){
           return guestBookService.update(id,Integer.parseInt(status),note);
        }
        return false;
    }

}
