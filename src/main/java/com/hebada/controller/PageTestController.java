package com.hebada.controller;

import com.hebada.entity.User;
import com.hebada.repository.PageResults;
import com.hebada.request.PersonListRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by paddy.luo on 2016/12/10.
 */
@Controller
public class PageTestController {

    private static Logger logger = LoggerFactory.getLogger(PageTestController.class);

    @RequestMapping(value = "/page", method = RequestMethod.GET)
    public String list() {
        return "page";
    }

    @RequestMapping(value = "/page", method = RequestMethod.POST)
    @ResponseBody
    public PageResults<User> list(@RequestBody PersonListRequest request) {
        logger.debug("request", request);
        PageResults result = new PageResults();
        result.setRows(newInit());
        result.setTotal(10);
        result.setPage(1);
        return result;
    }

    private List<User> newInit() {
        List<User> userList = new ArrayList<>();
        for(int i=0; i<10; i++) {
            User user = new User();
            user.setId(i);
            user.setName("luozi" + i);
            userList.add(user);
        }
        return userList;
    }
}
