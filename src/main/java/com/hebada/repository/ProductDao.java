package com.hebada.repository;

import com.hebada.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * Created by aiiajj on 2016/12/18.
 */
@Repository
public class ProductDao {

    @Autowired
    private BaseDAO baseDao;

    public boolean save(Product product){
        try{
            baseDao.save(product);
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }

    public boolean delete(int id){
        try{
            String hql = "update Product set deleted = 1 where id ="+id;
            baseDao.executeHql(hql);
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }

    public boolean delete(Product product){
        product.setDeleted(true);
        return update(product);
    }

    public  boolean update(Product product){
        try{
            baseDao.saveOrUpdate(product);
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }

    public PageResults<Product> findByPage(int page,int row,String type,String name){
        StringBuffer hql = new StringBuffer("from Product where deleted = 0 ");
        StringBuffer count = new StringBuffer("select count(*) from Product where deleted = 0 ");
        /*if(!StringUtils.isEmpty(type)){
            if(type.matches("[0-9]*")){
                hql.append(" and type = "+type);
                count.append(" and type = "+type);
            }
        }
        if(!StringUtils.isEmpty(name)){
            hql.append(" and name like '%"+name +"%'");
            count.append(" and name like '%"+name +"%'");
        }*/
        hql.append(" order by id desc");
        PageResults results = baseDao.findPage(hql.toString(), count.toString(), null, page, row);
        return results;
    }

    public Product get(int id){
        return (Product)baseDao.get(Product.class,id);
    }
}
