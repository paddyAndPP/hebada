package com.jiaduoli.controller;

import com.hebada.entity.Product;
import com.hebada.repository.PageResults;
import com.hebada.service.NewsService;
import com.hebada.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by paddy.luo on 2016/12/21.
 */
@Controller
public class BaseController {

    @Autowired
    private NewsService newsService;
    @Autowired
    private ProductService productService;

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String index(ModelMap model) {
        PageResults pageResults = newsService.findByPage(1, 4, null);
        List<Product> productList = productService.getAll();
        model.put("newsList", pageResults.getRows());
        model.put("productList", productList);
        return "jiaduoli/index";
    }
}
