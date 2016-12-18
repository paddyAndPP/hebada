package com.hebada.request;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.hebada.util.CustomerDateAndTimeDeserialize;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import java.util.Date;

/**
 * Created by paddy.luo on 2016/12/14.
 */
@XmlRootElement(name = "newsRequest")
@XmlAccessorType(XmlAccessType.FIELD)
public class NewsRequest {

    @XmlElement(name = "id")
    private int id;
    @XmlElement(name = "title")
    @NotBlank(message = "新闻标题不允许为空")
    private String title;
    @XmlElement(name = "dateTime")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonDeserialize(using = CustomerDateAndTimeDeserialize.class)
    private Date dateTime;
    @XmlElement(name = "description")
    private String description;
    @XmlElement(name = "content")
    @NotBlank(message = "新闻内容不允许为空")
    private String content;
    @XmlElement(name = "top")
    private boolean top;
    @XmlElement(name = "publish")
    private boolean publish;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public boolean isTop() {
        return top;
    }

    public void setTop(boolean top) {
        this.top = top;
    }

    public Date getDateTime() {
        return dateTime;
    }

    public void setDateTime(Date dateTime) {
        this.dateTime = dateTime;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean isPublish() {
        return publish;
    }

    public void setPublish(boolean publish) {
        this.publish = publish;
    }
}
