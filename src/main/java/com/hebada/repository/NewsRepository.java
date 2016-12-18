package com.hebada.repository;

import com.hebada.entity.News;
import com.hebada.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

/**
 * Created by paddy.luo on 2016/12/14.
 */
@Repository
public class NewsRepository {

    @Autowired
    private BaseDAO<News> baseDAO;

    public News get(int id) {
        return baseDAO.get(News.class, id);
    }

    public void save(News news) {
        baseDAO.save(news);
    }

    public PageResults<News> findByPage(int page , int row, String title){
        StringBuffer hql = new StringBuffer("from News where isDelete = 0 ");
        StringBuffer count = new StringBuffer("select count(*) from News where isDelete = 0 ");
        if(StringUtils.hasText(title)){
            hql.append(" and title like '%" + title + "%'");
            count.append(" and title like '%" + title + "%'");
        }
        hql.append(" order by id desc");
        PageResults results = baseDAO.findPage(hql.toString(), count.toString(), null, page, row);
        return results;
    }

    public void delete(News news) {
        baseDAO.delete(news);
    }

    public void update(News news) {
        baseDAO.saveOrUpdate(news);
    }
}
