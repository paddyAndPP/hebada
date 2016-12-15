package com.hebada.service;

import java.util.Set;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.hebada.enumeration.RoleType;
import com.hebada.repository.PageResults;
import com.hebada.repository.UserDao;
import com.hebada.response.AjaxResponse;
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

	public AjaxResponse saveUser(String name,String account,String password,int role_id){

		User newUser = null;

		if((null != name && !"".equals(name))&&(null != account && !"".equals(account)) && (null!=password&&!"".equals(password))){
			newUser = findByAccount(account);
			if(null==newUser){
				newUser =  new User();
				newUser.setAccount(account);
				newUser.setName(name);
				newUser.setPassword(MD5Util.getMD5KeyString(password));
				newUser.setRoleId(role_id);
			}else{
				return new AjaxResponse(-1,"登录名已存在！",false);
			}
		}
		AjaxResponse ajaxResponse = null;
		try {
			boolean isOk = userDao.saveUser(newUser);
			ajaxResponse = new AjaxResponse(0,"添加成功！",true);
		}catch (Exception e){
			ajaxResponse = new AjaxResponse(-1,"添加失败！",false);
		}
		return ajaxResponse;
	}

	public String findByPage(int page,int rows,String name,int role,int status){
		PageResults<User> result = userDao.findByPage(page,rows,name,role,status);
		ObjectMapper mapper = new ObjectMapper();
		String json = "";
		try{
			json = mapper.writeValueAsString(result);
		}catch(Exception e){
			e.printStackTrace();
		}
		return json;
	}

	public boolean update(int id,String name,String account,String password,int role_id){
		User user = new User();
		user.setId(id);
		user.setName(name);
		user.setAccount(account);
		user.setPassword(MD5Util.getMD5KeyString(password));
		user.setRoleId(role_id);
		user.setDeleted(Byte.valueOf("0"));
		return userDao.update(user);
	}

	public boolean delete(int id){
		return userDao.delete(id);
	}
}
