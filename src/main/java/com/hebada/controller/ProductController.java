package com.hebada.controller;

import com.hebada.entity.Product;
import com.hebada.entity.ProductType;
import com.hebada.repository.PageResults;
import com.hebada.response.ProductResult;
import com.hebada.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

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
    @ResponseBody
    public PageResults getProductList(@RequestParam(name = "page") int page,
                                                @RequestParam(name="rows") int rows,
                                               @RequestParam(name="type",required = false) String type,
                                               @RequestParam(name="name",required = false)String name){

        PageResults productPageResults =  productService.findByPage(page, rows, type, name);
        List<ProductResult> results = new ArrayList<>();
        for(Object obj : productPageResults.getRows()) {
            Product product = (Product) obj;
            ProductResult result = new ProductResult();
            result.setId(product.getId());
            result.setProductName(product.getName());
            result.setImageHtml("<img width='100' height='100' src='" + product.getPicUrl() + "'/>");
            result.setType(ProductType.getText(product.getType()));
            results.add(result);
        }
        productPageResults.setRows(results);
        return productPageResults;
    }

    @RequestMapping(value="/product/saveProduct",method = RequestMethod.POST)
    @ResponseBody
    public boolean saveProduct(@RequestParam(name="name")String name,
                              @RequestParam(name="type")String type,
                              @RequestParam(name="description", required =  false)String description,
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

    @RequestMapping(value = "/product/{id}", method = RequestMethod.GET)
    @ResponseBody
    public Product get(@PathVariable("id") Integer id) {
        return productService.get(id);
    }
}
