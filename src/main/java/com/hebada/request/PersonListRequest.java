package com.hebada.request;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * Created by paddy.luo on 2016/12/10.
 */
@XmlRootElement(name = "personListRequest")
@XmlAccessorType(XmlAccessType.FIELD)
public class PersonListRequest extends PageRequest {

    @XmlElement(name = "man")
    private boolean isMan;

    public boolean isMan() {
        return isMan;
    }

    public void setMan(boolean man) {
        isMan = man;
    }
}

