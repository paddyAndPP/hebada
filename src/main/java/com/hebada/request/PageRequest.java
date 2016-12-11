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

    @XmlElement(name = "currentPage")
    protected int currentPage;
    @XmlElement(name = "pageSize")
    protected int pageSize;

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getPageSize() {
        return pageSize == 0 ? DEFAULT_SIZE : this.pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
}
