package com.hebada.service;

import java.util.Set;

import com.hebada.repository.UserDao;
import com.hebada.util.MD5Util;
import com.hebada.entity.User;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("userService")
@Transactional
@SuppressWarnings("all")
public class UserService {
	
	@Autowired
	private UserDao userDao;

	public boolean login(String account , String password){
		Subject currentUser=SecurityUtils.getSubject();
		String pwd = MD5Util.getMD5KeyString(password);
		UsernamePasswordToken token=new UsernamePasswordToken(account, pwd );
		try {
			currentUser.login(token);
			System.out.println("is login");
			Session session=currentUser.getSession();
			session.setAttribute("account", account);
			return true;
		} catch (Exception e) {
			//e.printStackTrace();
			return false;
		}
//		User user = findByAccount(account);
//		if(null!=user){
//			if(MD5Util.getMD5KeyString(password).equals(user.getPassword())){
//				System.out.println("login success");
//				return user;
//			}
//		}
//		return null;
	}
	
	public User findByAccount(String account){
		return userDao.findByAccount(account);
	}
	
	public Set<String> findRoleByAccount(String account){
		return userDao.findRolesByAccount(account);
	}
	
	public Set<String> findPermissionByAccount(String account){
		return userDao.findPermissionByAccount(account);
	}
	
}
