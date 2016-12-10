package com.hebada.entity;

import java.sql.Timestamp;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;

/**
 * Created by aiiajj on 2016/12/7.
 *
 * @desc 客户留言
 */
@Table(name="t_guestbook")
@Entity
@DynamicInsert(value=true)
@DynamicUpdate(value=true)
public class GuestBook {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name="name",length = 25,nullable = false)
    //客户姓名
    private String name;

    //客户电话
    @Column(name="tel" , length = 11, nullable = false)
    private String tel;

    //地址
    @Column(name = "address" , length = 50 , nullable = false)
    private String address;

    //邮箱
    @Column(name = "email" )
    private String email;

    //留言内容
    @Column(name="content" , length = 255 , nullable = false)
    private String content;

    @Column(name="create_time")
    private Timestamp createTime;
    
    //状态
    @Column(name = "status" , columnDefinition = " INT DEFAULT 0")
    private Integer status;

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

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

	public Timestamp getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}
    
    
}
