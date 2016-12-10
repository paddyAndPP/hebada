package com.hebada.repository;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import java.util.List;
import java.util.Map;

/**
 * Created by paddy.luo on 2016/12/5.
 */
public class JPAAccess {

    private static Logger logger = LoggerFactory.getLogger(JPAAccess.class);

    @PersistenceContext
    private EntityManager entityManager;

    public EntityManager getEntityManager() {
        return entityManager;
    }

    public CriteriaBuilder getCriteriaBuilder() {
        return entityManager.getCriteriaBuilder();
    }

    public void save(Object o) {
        try {
            entityManager.persist(o);
        } finally {
            logger.debug("save, entityClass={}", o.getClass());
        }
    }

    public void update(Object o) {
        try {
            entityManager.merge(o);
        } finally {
            logger.debug("update, entityClass={}", o.getClass());
        }
    }

    public void delete(Object o) {
        try {
            entityManager.remove(o);
        } finally {
            logger.debug("delete, entityClass={}", o.getClass());
        }
    }

    public <T> T get(Class<T> clazz, Integer id) {
        try {
            return entityManager.find(clazz, id);
        } finally {
            logger.debug("get, entityClass={} id={}", clazz, id);
        }
    }

    public void refresh(Object o) {
        try {
            entityManager.refresh(o);
        } finally {
            logger.debug("refresh, entityClass={}", o.getClass());
        }
    }

    public void detach(Object o) {
        try {
            entityManager.detach(o);
        } finally {
            logger.debug("detach, entityClass={}", o.getClass());
        }
    }

    public <T> List<T> find(CriteriaQuery<T> query) {
        try {
            return entityManager.createQuery(query).getResultList();
        } finally {
            logger.debug("find by CriteriaQuery<T>");
        }
    }

    public <T> List<T> find(String hql, Map<String, Object> params) {
        try {
            Query query = entityManager.createQuery(hql);
            if (params != null) {
                for (Map.Entry<String, Object> entry : params.entrySet()) {
                    query.setParameter(entry.getKey(), entry.getValue());
                }
            }
            return query.getResultList();
        } finally {
            logger.debug("find, query={}, params={}", hql, params);
        }
    }

    public <T> List<T> find(String hql, Map<String, Object> params, int offset, int fetchSize) {
        try {
            Query query = entityManager.createQuery(hql);
            if (params != null) {
                for (Map.Entry<String, Object> entry : params.entrySet()) {
                    query.setParameter(entry.getKey(), entry.getValue());
                }
            }
            query.setFirstResult(offset);
            query.setMaxResults(fetchSize);
            return query.getResultList();
        } finally {
            logger.debug("find, query={}, params={}, offset={}, fetchSize={}", hql, params, offset, fetchSize);
        }
    }

    public <T> List<T> find(CriteriaQuery<T> query, int offset, int fetchSize) {
        try {
            return entityManager.createQuery(query).setFirstResult(offset).setMaxResults(fetchSize).getResultList();
        } finally {
            logger.debug("find by CriteriaQuery<T>, offset={}, fetchSize={}", offset, fetchSize);
        }
    }

    public int update(String hql, Map<String, Object> params) {
        try {
            Query query = entityManager.createQuery(hql);
            if (params != null) {
                for (Map.Entry<String, Object> entry : params.entrySet())
                    query.setParameter(entry.getKey(), entry.getValue());
            }
            return query.executeUpdate();
        } finally {
            logger.debug("update, hql={}, params={}", hql, params);
        }
    }

}
