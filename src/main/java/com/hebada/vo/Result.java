package com.hebada.vo;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by paddy.luo on 2016/12/17.
 */
public class Result {
    private int error;
    private String url;
    private String message;

    public Result() {}

    public Result(int error) {
        this.error = error;
    }

    public static Result success() {
        return new Result(0);
    }
    public static Result fail() {
        return new Result(1);
    }
    public Result addUrl(String url) {
        this.url = url;
        return this;
    }
    public Result message(String data) {
        this.message = data;
        return this;
    }

    public int getError() {
        return error;
    }

    public void setError(int error) {
        this.error = error;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
