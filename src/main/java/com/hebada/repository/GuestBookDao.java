package com.hebada.repository;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import com.hebada.entity.GuestBook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GuestBookDao {

	@Autowired
	public BaseDAO baseDao;

	public PageResults<GuestBook> findByPage(int page , int row,Map<String,Object> param){
		int beginIndex = (page - 1) * row;

		String hql = null;
		hql = "from GuestBook where deleted = 0";//  order by create_time desc limit :beginIndex,:row
		/*if(beginIndex<10000){

		}else{
			hql = "select * from GuestBook where not exists " +
					"(select * from  GuestBook order by create_time desc limit :beginIdnex,1) " +
					"order by create_time desc limit :row";
		}*/
		String hqlCount = "select count(*) from GuestBook a where deleted = 0";
		//Map map = new HashMap();
		PageResults results = baseDao.findPage(hql, hqlCount, param, page, row);
		return results;//(List<GuestBook>)baseDao.find(hql, map);
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
