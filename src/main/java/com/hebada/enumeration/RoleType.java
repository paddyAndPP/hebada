package com.hebada.enumeration;

/**
 * Created by aiiajj on 2016/12/15.
 */
public enum RoleType {

    ADMIN(1),OWNER(2),OFFICIAL(3);

    private int value;

    public int getValue(){
        return value;
    }
    private RoleType(int value){
        this.value = value;
    }
}
