package com.hebada.repository;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hebada.entity.User;

@Repository
public class UserDao {


	@Autowired
	private BaseDAO baseDao;
	
	public User findByAccount(String account){
		return (User)baseDao.get("from User where account = ?", new String[]{account});
	}
	
	public Set<String> findRolesByAccount(String account){
		String hql = "select b.name from t_user a , t_role b where a.account=? and a.role_id = b.id";
		return (Set<String>)baseDao.find(hql, new String[]{account});
	}
	
	public Set<String> findPermissionByAccount(String account){
		String hql = "select c.name from t_user a , t_permission b where a.account=? and a.role_id = b.role_id";
		return (Set<String>)baseDao.find(hql, new String[]{account});
	}
}
