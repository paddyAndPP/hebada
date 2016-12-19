package com.hebada.entity;

import javax.persistence.*;

/**
 * Created by aiiajj on 2016/12/18.
 */
@Table(name="t_product")
@Entity
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name="name",length = 25,nullable = false)
    private String name;

    @Column(name="type")
    private Integer type;

    @Column(name="description")
    @Basic(fetch = FetchType.LAZY)
    @Lob
    private String description;

    @Column(name="pic_url")
    private String picUrl;

    @Column(name="deleted",columnDefinition = "INT DEFAULT 0")
    private Boolean deleted;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPicUrl() {
        return picUrl;
    }

    public void setPicUrl(String picUrl) {
        this.picUrl = picUrl;
    }

    public Boolean getDeleted() {
        return deleted;
    }

    public void setDeleted(Boolean deleted) {
        this.deleted = deleted;
    }
}
