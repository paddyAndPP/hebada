package com.hebada.request;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;

/**
 * Created by paddy.luo on 2016/12/10.
 */

@XmlAccessorType(XmlAccessType.FIELD)
public class PageRequest {

    private static final int DEFAULT_SIZE = 10;

    @XmlElement(name = "page")
    protected int page;
    @XmlElement(name = "rows")
    protected int rows;

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getRows() {
        return rows;
    }

    public void setRows(int rows) {
        this.rows = rows==DEFAULT_SIZE?DEFAULT_SIZE:rows;
    }
}
