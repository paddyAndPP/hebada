package com.hebada.entity;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;

/**
 * Created by aiiajj on 2016/12/7.
 *
 * @desc 菜单
 */
@Table(name="t_menu")
@Entity
@DynamicInsert(value=true)
@DynamicUpdate(value=true)
public class Menu {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name="name" , length = 10 , nullable = false)
    private String name;

    @Column(name="parent_id")
    private Integer parentId;

    @Column(name="site" )
    private String site;

    @Column(name="sort_no")
    private Integer sortNo;

    @Column(name="deleted" , columnDefinition = "INT DEFAULT 0")
    private Integer deleted;

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

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public String getSite() {
        return site;
    }

    public void setSite(String site) {
        this.site = site;
    }

    public Integer getSortNo() {
        return sortNo;
    }

    public void setSortNo(Integer sortNo) {
        this.sortNo = sortNo;
    }

    public Integer getDeleted() {
        return deleted;
    }

    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }
}
