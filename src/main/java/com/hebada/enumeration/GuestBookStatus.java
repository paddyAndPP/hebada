package com.hebada.enumeration;

/**
 * Created by aiiajj on 2016/12/12.
 */
public enum GuestBookStatus {
    UNREAD(0),TRAIL(1),OVER(2);

    private int value;

    public int getValue(){
        return value;
    }
    private GuestBookStatus(int value){
        this.value = value;
    }

}
