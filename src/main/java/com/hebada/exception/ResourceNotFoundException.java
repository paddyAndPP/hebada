package com.hebada.exception;

/**
 * Created by paddy.luo on 2016/12/10.
 */
public class ResourceNotFoundException extends RuntimeException {

    public ResourceNotFoundException() {
    }

    public ResourceNotFoundException(String message) {
        super(message);
    }
}
