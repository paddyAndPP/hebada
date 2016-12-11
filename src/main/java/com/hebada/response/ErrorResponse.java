package com.hebada.response;

/**
 * Created by paddy.luo on 2016/12/10.
 */
public class ErrorResponse {
    private int status;
    private Object data;
    private boolean ok;

    public ErrorResponse() {
    }

    public ErrorResponse(boolean ok) {
        this.ok = ok;
    }

    public static ErrorResponse success() {
        return new ErrorResponse(true);
    }

    public static ErrorResponse fail(Object data) {
        ErrorResponse response = new ErrorResponse(false);
        response.setData(data);
        return response;
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

    public boolean isOk() {
        return ok;
    }

    public void setOk(boolean ok) {
        this.ok = ok;
    }
}
