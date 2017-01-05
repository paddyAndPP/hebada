package com.hebada.controller;

import com.hebada.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by aiiajj on 2016/12/18.
 */
@Controller
public class ProductController {

    @Autowired
    private ProductService productService;

    @RequestMapping(value = "/product/productList",method = RequestMethod.GET)
    public ModelAndView productList(){
        return new ModelAndView("/product/productList");
    }

    @RequestMapping(value = "/product/getProductList",method = RequestMethod.POST)
    public @ResponseBody Object getProductList(@RequestParam(name = "page") int page,
                                                @RequestParam(name="rows") int rows,
                                               @RequestParam(name="type",required = false) String type,
                                               @RequestParam(name="name",required = false)String name){


        return productService.findByPage(page,rows,type,name);
    }

    @RequestMapping(value="/product/saveProduct",method = RequestMethod.POST)
    @ResponseBody
    public boolean saveProduct(@RequestParam(name="name")String name,
                              @RequestParam(name="type")String type,
                              @RequestParam(name="description")String description,
                              @RequestParam(name="pic_url")String pic_url){

        return productService.save(name,type,description,pic_url);
    }

    @RequestMapping(value = "/product/updateProduct" , method = RequestMethod.POST)
    @ResponseBody
    public boolean updateProduct(@RequestParam(name="id")int id,
                          @RequestParam(name="name",required = false)String name,
                          @RequestParam(name="type",required = false)String type,
                          @RequestParam(name="description",required =  false)String description,
                          @RequestParam(name="pic_url",required = false)String pic_url){
        return productService.update(id,name,type,description,pic_url);
    }


    @RequestMapping(value = "/product/deleteProduct" , method = RequestMethod.POST)
    public @ResponseBody boolean deleteProduct(int id){
        return productService.delete(id);
    }
}
