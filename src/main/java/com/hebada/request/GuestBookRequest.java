package com.hebada.request;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by aiiajj on 2016/12/12.
 */
@XmlRootElement(name = "guestBookRequest")
@XmlAccessorType(XmlAccessType.FIELD)
public class GuestBookRequest extends PageRequest {

    private static final int DEFAULT_ALL = -1;

    @XmlElement(name="name")
    private String name;

    @XmlElement(name="status")
    private Integer status;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status==DEFAULT_ALL ? null:status;
    }

    public Map<String,Object> getParam(){
        Map<String,Object> param = new HashMap<String,Object>();
        if(name != null){
            param.put("name",name);
        }
        if(null != status){
            if(status >= 0 ){
                param.put("status",status);
            }
        }
        return param;
    }

    @Override
    public String toString() {
        return "GuestBookRequest{" +
                "name='" + name + '\'' +
                ", status=" + status +
                '}';
    }
}
