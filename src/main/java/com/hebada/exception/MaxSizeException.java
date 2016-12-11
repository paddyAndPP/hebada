package com.hebada.exception;

/**
 * Created by paddy.luo on 2016/12/10.
 */
public class MaxSizeException extends RuntimeException {

    public MaxSizeException() {
    }

    public MaxSizeException(String message) {
        super(message);
    }
}
