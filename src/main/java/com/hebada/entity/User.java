package com.hebada.entity;

import javax.persistence.*;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

/**
 * Created by MrLuo on 2016/10/7.
 */
@Table(name="t_user")
@Entity
@DynamicInsert(value=true)
@DynamicUpdate(value=true)
public class User {

    @Id
    @GeneratedValue
    private Integer id;
    
    @Column(name="name",length=10,nullable = false)
    private String name;
    
    @Column(name="account",length=32,nullable = false,unique = true)
    private String account;
    
    @Column(name="password" , length = 32 , nullable = false)
    private String password;
    
    //@Column(name="tel" , length = 11 , nullable = false)
    //private String tel;
    
    @Column(name="role_id")
    private Integer roleId;

	@Column(name = "deleted" , columnDefinition = "INT DEFAULT 0")
	private Byte deleted;


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

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getRoleId() {
		return roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public Byte getDeleted() {
		return deleted;
	}

	public void setDeleted(Byte deleted) {
		this.deleted = deleted;
	}

}
