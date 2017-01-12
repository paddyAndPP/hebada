package com.hebada.entity;

/**
 * Created by paddy.luo on 2017/1/12.
 */
public enum ProductType {
    XI_JIU(1, "习酒"),
    DA_HONG_PAO(2, "大红袍"),
    YANG_JIU(3, "洋酒"),
    OTHER(-1, "其他"),;        ;

    private final int value;
    private final String text;

    private ProductType(int value, String text) {
        this.value = value;
        this.text = text;
    }

    public String getText() {
        return text;
    }

    public static String getText(int value) {
        for(ProductType type : values()) {
            if(type.value == value)
                return type.text;
        }
        return OTHER.text;
    }
}
