package com.hebada.repository;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.hebada.entity.GuestBook;
import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class GuestBookDao {

	@Autowired
	public BaseDAO baseDao;

	public PageResults<GuestBook> findByPage(int page , int row,String name ,Integer status){
		int beginIndex = (page - 1) * row;
		StringBuffer hql = new StringBuffer("from GuestBook where deleted = 0 ");
		StringBuffer count = new StringBuffer("select count(*) from GuestBook a where deleted = 0 ");
		if(null!=name && !"".equals(name)){
			hql.append(" and name like '%"+name+"%'");
			count.append(" and name like '%"+name+"%'");
			//param.put("name",name);
		}
		if(null!=status && status >= 0){
			hql.append(" and status = "+status);
			count.append(" and status = "+status);
			System.out.println("set parameter status:"+status);
		}
		hql.append(" order by id desc ");
		PageResults results = baseDao.findPage(hql.toString(), count.toString(), null, page, row);
		return results;
	}


	public boolean delete(int id){
		boolean isOk = false;
		String hql = "update GuestBook set deleted = 1 where id ="+id;
		try {
			baseDao.executeHql(hql);
			isOk = true;
		}catch(Exception e){
			e.printStackTrace();
		}
		return isOk;
	}

	public boolean update(GuestBook guestBook){
		boolean isOk = false;
		try{
			baseDao.saveOrUpdate(guestBook);
			System.out.println("update GuestBook successfully");
			isOk = true;

		}catch(Exception e){
			e.printStackTrace();
		}
		return isOk;
	}

	public boolean updateStatusAndNote(int id,int status,String note){
		boolean isOk = false;
		String hql = "update GuestBook set status = ? and note = ? where id = ?";
		try {
			baseDao.executeHql(hql,new Object[]{status,note,id});
		}catch (Exception e){
			e.printStackTrace();
		}
		return isOk;
	}

	public GuestBook get(int id){
		return (GuestBook)baseDao.get(GuestBook.class,id);
	}
}
