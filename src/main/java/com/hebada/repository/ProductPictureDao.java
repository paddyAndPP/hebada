package com.hebada.repository;

import com.hebada.entity.ProductPicture;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by aiiajj on 2016/12/18.
 */
@Repository
public class ProductPictureDao {

    @Autowired
    private BaseDAO baseDao;

    public boolean save(ProductPicture productPicture){
        try{
            baseDao.save(productPicture);
            return true;
        }catch(Exception e){

        }
        return false;
    }

    public boolean delete(int id){
        try{
            String hql = "update ProductPicture set deleted = 0 where id = "+id;
            baseDao.executeHql(hql);
            return true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return false;
    }

    public boolean delete(ProductPicture productPicture){
        productPicture.setDeleted(true);
        return update(productPicture);
    }

    public boolean update(ProductPicture productPicture){
        try{
            baseDao.update(productPicture);
            return true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return false;
    }

    public PageResults<ProductPicture> findPage(int page,int row,int productId){
        StringBuffer hql = new StringBuffer("from ProductPicture where deleted = 0 and productId = "+productId);
        StringBuffer count = new StringBuffer("select count(*) from ProductPicture where deleted = 0 and productId ="+productId);
        return baseDao.findPage(hql.toString(),count.toString(),null,page,row);
    }

    public List<ProductPicture> findList(int productId){
        String hql = "from ProductPicture where deleted = 0 and productId = ?";
        return  baseDao.find(hql,new Object[]{productId});
    }

    public ProductPicture get(int id){
        return (ProductPicture)baseDao.get(ProductPicture.class,id);
    }
}
