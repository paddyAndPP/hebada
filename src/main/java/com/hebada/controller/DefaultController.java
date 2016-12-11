package com.hebada.controller;

import com.hebada.constant.URLs;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * Created by paddy.luo on 2016/12/10.
 */
public class DefaultController {

    @ExceptionHandler(Exception.class)
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    public String exception() {
        return URLs.ERROR;
    }
}
