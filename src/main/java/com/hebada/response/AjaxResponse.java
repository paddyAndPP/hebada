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

    public AjaxResponse(boolean ok) {
        this.ok = ok;
    }

    public static AjaxResponse success() {
        return  new AjaxResponse(true);
    }

    public AjaxResponse with(Object data) {
        this.data = data;
        return this;
    }

    public static AjaxResponse fail() {
        return new AjaxResponse(false);
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
