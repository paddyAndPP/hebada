package com.hebada.controller;

import com.hebada.constant.URLs;
import com.hebada.exception.ResourceNotFoundException;
import com.hebada.response.ErrorResponse;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * Created by paddy.luo on 2016/12/10.
 */
public class DefaultRestController {

    @ExceptionHandler(Exception.class)
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    @ResponseBody
    public ErrorResponse exception(Exception e) {
        return ErrorResponse.fail(e.getMessage());
    }

    @ExceptionHandler(Exception.class)
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    @ResponseBody
    public ErrorResponse resourceNotFound(ResourceNotFoundException e) {
        return ErrorResponse.fail(e.getMessage());
    }
}
