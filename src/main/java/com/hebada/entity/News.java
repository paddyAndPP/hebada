package com.hebada.entity;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by aiiajj on 2016/12/7.
 */
@Table(name="t_news")
@Entity
//@DynamicInsert(value=true)
//@DynamicUpdate(value=true)
public class News {

    @Id
    @GeneratedValue
    private Integer id;

    @Column(name="title" , length = 25)
    private String title;

    @Column(name="content" )
    @Basic(fetch = FetchType.LAZY)
    @Lob
    private String content;

    @Column(name="read_count")
    private Integer readCount;

    @Column(name="read_time")
    //@Temporal(TemporalType.TIMESTAMP)
    private Timestamp createTime;

    @Column(name="publish_time")
    //@Temporal(TemporalType.TIMESTAMP)
    private Timestamp publishTime;

    @Column(name="is_top")
    private boolean isTop;

    /*@Column(name="create_user")
    @ManyToOne(cascade = {CascadeType.PERSIST, CascadeType.MERGE} , targetEntity=User.class)
    @JoinColumn(name="create_user_id")
    private User createUser;*/

    @Column(name = "create_user_id")
    private Integer createUserId;

    @Column(name = "is_delete")
    private boolean isDelete;

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
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

    public Integer getReadCount() {
        return readCount;
    }

    public void setReadCount(Integer readCount) {
        this.readCount = readCount;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public Timestamp getPublishTime() {
        return publishTime;
    }

    public void setPublishTime(Timestamp publishTime) {
        this.publishTime = publishTime;
    }

    public boolean isTop() {
        return isTop;
    }

    public void setTop(boolean top) {
        isTop = top;
    }

    public Integer getCreateUserId() {
		return createUserId;
	}

	public void setCreateUserId(Integer createUserId) {
		this.createUserId = createUserId;
	}

    public boolean isDelete() {
        return isDelete;
    }

    public void setDelete(boolean delete) {
        isDelete = delete;
    }
}
