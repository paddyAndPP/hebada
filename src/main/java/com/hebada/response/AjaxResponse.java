package com.hebada.response;

/**
 * Created by paddy.luo on 2016/12/11.
 */
public class AjaxResponse {
    private int status;
    private Object data;
    private boolean ok;

    public AjaxResponse() {
    }
    public AjaxResponse(int status,Object data , boolean ok){
        this.status = status;
        this.data = data;
        this.ok = ok;
    }
    public AjaxResponse(int status) {
        this.status = status;
    }

    public static AjaxResponse success() {
        return  new AjaxResponse(0);
    }

    public AjaxResponse with(Object data) {
        this.data = data;
        return this;
    }

    public static AjaxResponse fail() {
        return new AjaxResponse(1);
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public boolean ok() {
        return ok;
    }

    public void setOk(boolean ok) {
        this.ok = ok;
    }
}
