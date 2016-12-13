package com.hebada.repository;

import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.ScrollableResults;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("baseDao")
@SuppressWarnings("all")
public class BaseDAO<T> {

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	public void clearSession() {
		this.getCurrentSession().flush();
		this.getCurrentSession().clear();
	}

	public Serializable save(T o) {

		return this.getCurrentSession().save(o);
	}

	public void delete(T o) {

		// this.getCurrentSession().update(o);
		this.getCurrentSession().delete(o);
	}

	public void update(T o) {
		this.getCurrentSession().update(o);
	}

	public void saveOrUpdate(T o) {
		this.getCurrentSession().saveOrUpdate(o);
	}

	public List<T> find(String hql) {
		return this.getCurrentSession().createQuery(hql).list();
	}

	public List<T> find(String hql, Object[] param) {
		Query q = this.getCurrentSession().createQuery(hql);
		if (param != null && param.length > 0) {
			for (int i = 0; i < param.length; i++) {
				q.setParameter(i, param[i]);
			}
		}
		return q.list();
	}

	public List<T> find(String hql, Map<String, Object> param) {

		Query q = this.getCurrentSession().createQuery(hql);

		if (param != null && param.size() > 0) {

			Iterator it = param.keySet().iterator();

			while (it.hasNext()) {
				String key = it.next().toString();

				Object obj = param.get(key);

				if (obj instanceof Collection<?>) {
					q.setParameterList(key, (Collection<?>) obj);
				} else if (obj instanceof Object[]) {
					q.setParameterList(key, (Object[]) obj);
				} else {
					q.setParameter(key, obj);
				}

			}
		}
		return q.list();
	}

	public Integer findSqlCount(String sql, Map<String, Object> param) {
		Query q = this.getCurrentSession().createSQLQuery(sql);
		if (param != null && param.size() > 0) {

			Iterator it = param.keySet().iterator();

			while (it.hasNext()) {
				String key = it.next().toString();

				Object obj = param.get(key);
				System.out.println("key="+key+" value="+obj);
				if (obj instanceof Collection<?>) {
					q.setParameterList(key, (Collection<?>) obj);
				} else if (obj instanceof Object[]) {
					q.setParameterList(key, (Object[]) obj);
				} else {
					q.setParameter(key, obj);
				}

			}
		}
		return Integer.valueOf(q.uniqueResult() + "");
	}

	public List<T> findSQL(String hql, Map<String, Object> param) {

		Query q = this.getCurrentSession().createSQLQuery(hql);

		if (param != null && param.size() > 0) {

			Iterator it = param.keySet().iterator();

			while (it.hasNext()) {
				String key = it.next().toString();

				Object obj = param.get(key);

				if (obj instanceof Collection<?>) {
					q.setParameterList(key, (Collection<?>) obj);
				} else if (obj instanceof Object[]) {
					q.setParameterList(key, (Object[]) obj);
				} else {
					q.setParameter(key, obj);
				}

			}
		}

		return q.list();
	}

	public List<T> find(String hql, Object[] param, Integer page, Integer rows) {
		if (page == null || page < 1) {
			page = 1;
		}
		if (rows == null || rows < 1) {
			rows = 10;
		}
		Query q = this.getCurrentSession().createQuery(hql);

		if (param != null && param.length > 0) {
			for (int i = 0; i < param.length; i++) {
				q.setParameter(i, param[i]);
			}
		}
		return q.setFirstResult((page - 1) * rows).setMaxResults(rows).list();
	}

	public List<T> find(String hql, Map<String, Object> param, Integer page, Integer rows) {
		if (page == null || page < 1) {
			page = 1;
		}
		if (rows == null || rows < 1) {
			rows = 10;
		}
		Query q = this.getCurrentSession().createQuery(hql);

		if (param != null && param.size() > 0) {
			Iterator it = param.keySet().iterator();

			while (it.hasNext()) {
				String key = it.next().toString();
				Object o = param.get(key);
				if (o instanceof Collection<?>) {
					q.setParameterList(key, (Collection<?>) o);
				} else if (o instanceof Object[]) {
					q.setParameterList(key, (Object[]) o);
				} else {
					q.setParameter(key, o);
				}

			}
		}

		return q.setFirstResult((page - 1) * rows).setMaxResults(rows).list();
	}

	public List<T> findSQL(String hql, Map<String, Object> param, Integer page, Integer rows) {
		if (page == null || page < 1) {
			page = 1;
		}
		if (rows == null || rows < 1) {
			rows = 10;
		}
		Query q = this.getCurrentSession().createSQLQuery(hql);

		if (param != null && param.size() > 0) {
			Iterator it = param.keySet().iterator();

			while (it.hasNext()) {
				String key = it.next().toString();
				Object o = param.get(key);
				// 杩欓噷鑰冭檻浼犲叆鐨勫弬鏁版槸浠�涔堢被鍨嬶紝涓嶅悓绫诲瀷浣跨敤鐨勬柟娉曚笉鍚�
				if (o instanceof Collection<?>) {
					q.setParameterList(key, (Collection<?>) o);
				} else if (o instanceof Object[]) {
					q.setParameterList(key, (Object[]) o);
				} else {
					q.setParameter(key, o);
				}

			}
		}
		return q.setFirstResult((page - 1) * rows).setMaxResults(rows).list();
	}

	public T get(Class<T> c, Serializable id) {
		return (T) this.getCurrentSession().get(c, id);
	}

	public T get(String hql, Object[] param) {
		List<T> l = this.find(hql, param, 1, 1);
		if (l != null && l.size() > 0) {
			return l.get(0);
		} else {
			return null;
		}
	}

	public T get(String hql, Map<String, Object> param) {
		List<T> l = this.find(hql, param, 1, 1);
		if (l != null && l.size() > 0) {
			return l.get(0);
		} else {
			return null;
		}
	}

	public Long count(String hql) {
		return (Long) this.getCurrentSession().createQuery(hql).uniqueResult();
	}

	public Long count(String hql, Object[] param) {
		Query q = this.getCurrentSession().createQuery(hql);

		if (param != null && param.length > 0) {
			for (int i = 0; i < param.length; i++) {
				q.setParameter(i, param[i]);
			}
		}
		return (Long) q.uniqueResult();
	}

	public Long count(String hql, Map<String, Object> param) {
		Query q = this.getCurrentSession().createQuery(hql);
		q.setCacheable(true);
		if (param != null && param.size() > 0) {
			Iterator it = param.keySet().iterator();

			while (it.hasNext()) {
				String key = it.next().toString();
				Object o = param.get(key);
				// 杩欓噷鑰冭檻浼犲叆鐨勫弬鏁版槸浠�涔堢被鍨嬶紝涓嶅悓绫诲瀷浣跨敤鐨勬柟娉曚笉鍚�
				if (o instanceof Collection<?>) {
					q.setParameterList(key, (Collection<?>) o);
				} else if (o instanceof Object[]) {
					q.setParameterList(key, (Object[]) o);
				} else {
					q.setParameter(key, o);
				}

			}
		}
		return (Long) q.uniqueResult();
	}

	public Long countSQL(String hql, Map<String, Object> param) {
		Query q = this.getCurrentSession().createSQLQuery(hql);

		if (param != null && param.size() > 0) {
			Iterator it = param.keySet().iterator();

			while (it.hasNext()) {
				String key = it.next().toString();
				Object o = param.get(key);
				// 杩欓噷鑰冭檻浼犲叆鐨勫弬鏁版槸浠�涔堢被鍨嬶紝涓嶅悓绫诲瀷浣跨敤鐨勬柟娉曚笉鍚�
				if (o instanceof Collection<?>) {
					q.setParameterList(key, (Collection<?>) o);
				} else if (o instanceof Object[]) {
					q.setParameterList(key, (Object[]) o);
				} else {
					q.setParameter(key, o);
				}

			}
		}
		BigInteger totalrecord = (BigInteger) q.uniqueResult();
		return totalrecord.longValue();
	}

	public Integer executeHql(String hql) {
		return this.getCurrentSession().createQuery(hql).executeUpdate();
	}

	public Integer executeHql(String hql, Object[] param) {
		Query q = this.getCurrentSession().createQuery(hql);

		if (param != null && param.length > 0) {
			for (int i = 0; i < param.length; i++) {
				q.setParameter(i, param[i]);
			}
		}
		return q.executeUpdate();
	}

	public Integer executeHql(String hql, Map<String, Object> param) {
		Query q = this.getCurrentSession().createQuery(hql);
		if (param != null && param.size() > 0) {
			Iterator it = param.keySet().iterator();
			while (it.hasNext()) {
				String key = it.next().toString();
				Object o = param.get(key);
				// 杩欓噷鑰冭檻浼犲叆鐨勫弬鏁版槸浠�涔堢被鍨嬶紝涓嶅悓绫诲瀷浣跨敤鐨勬柟娉曚笉鍚�
				if (o instanceof Collection<?>) {
					q.setParameterList(key, (Collection<?>) o);
				} else if (o instanceof Object[]) {
					q.setParameterList(key, (Object[]) o);
				} else {
					q.setParameter(key, o);
				}
			}
		}
		return q.executeUpdate();
	}

	public List findProcedures(String proc, List<Object> param) {
		Session session = this.getCurrentSession();
		SQLQuery query = session.createSQLQuery(proc);

		if (param != null) {
			for (int i = 0; i < param.size(); i++) {
				query.setString(i, param.get(i) == null ? null : param.get(i).toString());
			}
		}
		return query.list();
	}

	public List findProcedures(String proc) {
		Session session = this.getCurrentSession();
		SQLQuery query = session.createSQLQuery(proc);
		return query.list();
	}

	public int executeProcedures(String proc, List<Object> param) {
		Session session = this.getCurrentSession();
		SQLQuery query = session.createSQLQuery(proc);

		for (int i = 0; i < param.size(); i++) {
			query.setString(i, param.get(i).toString());
		}
		return query.executeUpdate();
	}

	public PageResults<T> findPage(String hql, String hqlCount, Map<String, Object> param, Integer page, Integer rows) {
		PageResults<T> retValue = new PageResults<T>();
		if (page == null || page < 1) {
			page = 1;
		}
		if (rows == null || rows < 1) {
			rows = 10;
		}
		Query q = this.getCurrentSession().createQuery(hql);
		q.setCacheable(true);
		if (param != null && param.size() > 0) {
			Iterator it = param.keySet().iterator();

			while (it.hasNext()) {
				String key = it.next().toString();
				Object o = param.get(key);
				System.out.println("key="+key+" value="+o);
				if (o instanceof Collection<?>) {
					q.setParameterList(key, (Collection<?>) o);
				} else if (o instanceof Object[]) {
					q.setParameterList(key, (Object[]) o);
				} else {
					q.setParameter(key, o);
				}

			}
		}
		if (hqlCount == null) {
			ScrollableResults results = q.scroll();
			results.last();
			retValue.setTotal(results.getRowNumber() + 1);// 设置总记录数
		} else {
			Long count = count(hqlCount, param);
			retValue.setTotal(count.intValue());
		}
		Query query = q.setFirstResult((page - 1) * rows).setMaxResults(rows);
		System.out.println(query.toString());
		List<T> itemList = query.list();
		retValue.setPage(page);
		if (itemList == null) {
			itemList = new ArrayList<T>();
		}
		retValue.setRows(itemList);
		return retValue;
	}

	public BigDecimal getmnySql(String sql) {
		List li = this.getCurrentSession().createQuery(sql).list();
		if (li != null || !(li.isEmpty())) {
			return (BigDecimal) (li.get(0));
		}
		return null;
	}

	public List<T> getListObjs(String hql) {
		Query query = this.getCurrentSession().createQuery(hql);
		query.setFirstResult(0);
		query.setMaxResults(1);
		return query.list();
	}


}