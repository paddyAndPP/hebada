package com.hebada.repository;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hebada.entity.GuestBook;

@Repository
public class GuestBookDao {

	@Autowired
	private BaseDAO baseDao;
	
	public List<GuestBook> findByPage(int page , int row){
		int beginIndex = (page - 1) * row;
		
		String hql = null;
		if(beginIndex<10000){
			hql = "from GuestBook order by create_time desc limit :beginIndex,:row  ";
		}else{
			hql = "from GuestBook not exists (select id from  GuestBook order by create_time desc limit :beginIdnex,1) order by create_time desc limit :row";
		}
		//String hqlCount = "select count(*) from GuestBook";
		Map map = new HashMap();
		//PageResults results = baseDao.findPage(hql, hqlCount, map, page, row);
		return (List<GuestBook>)baseDao.find(hql, map);
	}
	
	public long count(Map<String,Object> param){
		StringBuffer countStr = new StringBuffer("select count(*) from GuestBook");
		if(null!=param && !param.isEmpty()){
			countStr.append(" where ");
			Set<String> keySet = param.keySet();
			Iterator<String> iterator = keySet.iterator();
			while(iterator.hasNext()){
				
			}
		}
		return 0l;
	}
}
