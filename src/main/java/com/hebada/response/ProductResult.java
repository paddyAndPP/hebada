package com.hebada.response;

/**
 * Created by paddy.luo on 2017/1/12.
 */
public class ProductResult {

    private int id;
    private String productName;
    private String type;
    private String imageHtml;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getImageHtml() {
        return imageHtml;
    }

    public void setImageHtml(String imageHtml) {
        this.imageHtml = imageHtml;
    }
}
