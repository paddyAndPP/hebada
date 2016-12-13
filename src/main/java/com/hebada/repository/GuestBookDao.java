package com.hebada.repository;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.hebada.entity.GuestBook;
import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GuestBookDao {

	@Autowired
	public BaseDAO baseDao;

	public PageResults<GuestBook> findByPage(int page , int row,String name ,Integer status){
		int beginIndex = (page - 1) * row;

		StringBuffer hql = new StringBuffer("from GuestBook where deleted = 0 ");
		StringBuffer count = new StringBuffer("select count(*) from GuestBook a where deleted = 0 ");
		Map<String,Object> param = new HashedMap();
		if(null!=name && !"".equals(name)){
			hql.append(" and name like '%"+name+"'");
			count.append(" and name like '%"+name+"'");
			//param.put("name",name);
		}
		if(null!=status && status >= 0){
			hql.append(" and status = "+status);
			count.append(" and status = "+status);
			System.out.println("set parameter status:"+status);
			//param.put("status",status);
		}
		hql.append(" order by id desc ");
		//  order by create_time desc limit :beginIndex,:row
		/*if(beginIndex<10000){

		}else{
			hql = "select * from GuestBook where not exists " +
					"(select * from  GuestBook order by create_time desc limit :beginIdnex,1) " +
					"order by create_time desc limit :row";
		}*/

		//Map map = new HashMap();
		//Integer count = baseDao.findSqlCount(hqlCount, param);
		//List list = baseDao.find(hql, param, page, row);
		PageResults results = baseDao.findPage(hql.toString(), count.toString(), null, page, row);
		//PageResults results = new PageResults();
		//results.setPage(page);
		//results.setRows(list);
		//results.setTotal(count);
		return results;//(List<GuestBook>)baseDao.find(hql, map);
	}

	public long count(Map<String,Object> param){
		StringBuffer countStr = new StringBuffer("select count(*) from GuestBook ");
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
