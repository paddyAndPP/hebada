package com.hebada.realm;


import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.hebada.entity.User;
import com.hebada.service.UserService;


public class MyRealm extends AuthorizingRealm{

	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	/**
	 * 为当限前登录的用户授予角色和权
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		String account=(String)principals.getPrimaryPrincipal();
		SimpleAuthorizationInfo authorizationInfo=new SimpleAuthorizationInfo();
		authorizationInfo.setRoles(userService.findRoleByAccount(account));
		authorizationInfo.setStringPermissions(userService.findPermissionByAccount(account));
		System.out.println("get permission");
		return authorizationInfo;
	}

	/**
	 * 验证当前登录的用户
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		String account=(String)token.getPrincipal();
		User user=userService.findByAccount(account);
		System.out.println("do get authentication info");
		if(user!=null){
			AuthenticationInfo authcInfo=new SimpleAuthenticationInfo(user.getAccount(),user.getPassword(),"xx");
			return authcInfo;
		}else{
			return null;				
		}
	}

}