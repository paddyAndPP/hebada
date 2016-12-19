package com.hebada.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.hebada.entity.Product;
import com.hebada.repository.PageResults;
import com.hebada.repository.ProductDao;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by aiiajj on 2016/12/18.
 */
@Service("productService")
public class ProductService {

    @Autowired
    private ProductDao productDao;

    public String findByPage(int page,int row,String type,String name){
        PageResults<Product> result = productDao.findByPage(page,row,type,name);
        ObjectMapper mapper = new ObjectMapper();
        String json = "";
        try{
            json = mapper.writeValueAsString(result);
        }catch(Exception e){
            e.printStackTrace();
        }
        return json;
    }

    public boolean save(String name,String type , String description ,String pir_url){
        Product product = new Product();
        product.setDeleted(false);
        product.setName(name);
        product.setDescription(description);
        product.setId(NumberUtils.toInt(type));
        product.setPicUrl(pir_url);
        return productDao.save(product);
    }

    public boolean update(int id,String name,String type,String description,String pic_url){
        Product product = productDao.get(id);
        if(!StringUtils.isEmpty(name)){
            product.setName(name);
        }
        if(!StringUtils.isEmpty(type)){
            product.setType(NumberUtils.toInt(type));
        }
        if(!StringUtils.isEmpty(description)){
            product.setDescription(description);
        }
        if(!StringUtils.isEmpty(pic_url)){
            product.setPicUrl(pic_url);
        }
        return productDao.update(product);
    }

    public boolean delete(int id){
        return productDao.delete(id);
    }
}
