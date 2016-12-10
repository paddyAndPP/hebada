package com.hebada.entity;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

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
    private byte isTop;

    /*@Column(name="create_user")
    @ManyToOne(cascade = {CascadeType.PERSIST, CascadeType.MERGE} , targetEntity=User.class)
    @JoinColumn(name="create_user_id")
    private User createUser;*/

    private Integer craeteUserId;


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

    public byte getIsTop() {
        return isTop;
    }

    public void setIsTop(byte isTop) {
        this.isTop = isTop;
    }

   /* public User getCreateUser() {
        return createUser;
    }

    public void setCreateUser(User createUser) {
        this.createUser = createUser;
    }*/
    
    public Integer getCraeteUserId() {
		return craeteUserId;
	}

	public void setCraeteUserId(Integer craeteUserId) {
		this.craeteUserId = craeteUserId;
	}
}
