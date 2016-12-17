package com.hebada.repository;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hebada.entity.User;

@Repository
public class UserDao {


	@Autowired
	private BaseDAO baseDao;
	
	public User findByAccount(String account){
		return (User)baseDao.get("from User where deleted = 0 and account = ?", new String[]{account});
	}
	
	public List<String> findRolesByAccount(String account){
		String hql = "select b.name from User a , Role b where a.deleted = 0 and a.account=? and a.roleId = b.id";
		return (List<String>)baseDao.find(hql, new String[]{account});
	}
	
	public List<String> findPermissionByAccount(String account){
		String hql = "select b.name from User a , Permission b where a.deleted = 0 and  a.account=? and a.roleId = b.roleId";
		return (List<String>)baseDao.find(hql, new String[]{account});
	}

	public boolean saveUser(User user){
		try {
			baseDao.save(user);
			return true;
		}catch(Exception e){
			e.printStackTrace();
		}
		return false;
	}

	public PageResults<User> findByPage(int page , int row, String name ,Integer role_id, Integer status){
		StringBuffer hql = new StringBuffer("from User where deleted = 0 ");
		StringBuffer count = new StringBuffer("select count(*) from User where deleted = 0 ");
		if(null != name && !"".equals(name)){
			hql.append(" and name like '%"+name+"%'");
			count.append(" and name like '%"+name+"%'");
		}
		if(null != role_id && role_id > 0){
			hql.append(" and roleId = "+role_id);
			count.append(" and role_id = "+role_id);
		}
		if(null != status && status > 0){
			hql.append(" and status = "+status);
			count.append(" and status = "+status);
		}
		hql.append(" order by id desc");
		PageResults results = baseDao.findPage(hql.toString(), count.toString(), null, page, row);
		return results;
	}

	public boolean update(User user){
		try{
			baseDao.saveOrUpdate(user);
			return  true;
		}catch(Exception e){
			e.printStackTrace();
		}
		return false;
	}

	public boolean delete(int id){
		boolean isOk = false;
		String hql = "update User set deleted = 1 where id ="+id;
		try {
			baseDao.executeHql(hql);
			isOk = true;
		}catch(Exception e){
			e.printStackTrace();
		}
		return isOk;
	}
}
