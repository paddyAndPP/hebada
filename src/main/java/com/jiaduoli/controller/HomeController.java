package com.jiaduoli.controller;

import com.hebada.entity.Product;
import com.hebada.repository.PageResults;
import com.hebada.service.NewsService;
import com.hebada.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by paddy.luo on 2016/12/18.
 */
@Controller
@RequestMapping("/jdl")
public class HomeController {

    @Autowired
    private ProductService productService;
    //保险知识
    @RequestMapping(value = "/bxzs" ,method = RequestMethod.GET)
    public String bxzs(){
        return "jiaduoli/bxzs";
    }

    //公司介绍
    @RequestMapping(value = "/gsjs" ,method = RequestMethod.GET)
    public String gsjs(){
        return "jiaduoli/about/gsjs";
    }

    //资质荣誉
    @RequestMapping(value = "/ryzz", method = RequestMethod.GET)
    public String zzry() {
        return "jiaduoli/about/zzry";
    }
    //公司新闻
    @RequestMapping(value = {"/gsxw", "/dtxx"} ,method = RequestMethod.GET)
    public String gsxw(){
        return "jiaduoli/news/gsxw";
    }

    //关于我们
    @RequestMapping(value = "/gywm" ,method = RequestMethod.GET)
    public String gywm(){
        return "jiaduoli/about/gsjs";
    }

    //加盟政策
    @RequestMapping(value = "/jmzc" ,method = RequestMethod.GET)
    public String jmzc(){
        return "jiaduoli/about/jmzc";
    }

    //战略合作
    @RequestMapping(value = "/zlhz" ,method = RequestMethod.GET)
    public String zlhz(){
        return "jiaduoli/zlhz";
    }
    //最新活动
    @RequestMapping(value = "/zxdt" ,method = RequestMethod.GET)
    public String zxdt(){
        return "jiaduoli/zxdt";
    }
    //服务网点
    @RequestMapping(value = "/fwwd" ,method = RequestMethod.GET)
    public String fwwd(){
        return "jiaduoli/fwwd";
    }
    //泸州老窖
    @RequestMapping(value = "/lzlj" ,method = RequestMethod.GET)
    public String lzlj(){
        return "jiaduoli/lzlj";
    }
    //网络商城
    @RequestMapping(value = "/wlsc" ,method = RequestMethod.GET)
    public String wlsc(ModelMap model){
        List<Product> productList = productService.getAll();
        model.put("productList", productList);
        return "jiaduoli/wlsc";
    }
    //联系方式
    @RequestMapping(value = "/lxfs" ,method = RequestMethod.GET)
    public String lxfs(){
        return "jiaduoli/lxfs";
    }
    //资料下载
    @RequestMapping(value = "/zlxz" ,method = RequestMethod.GET)
    public String zlxz(){
        return "jiaduoli/zlxz";
    }

    @RequestMapping(value = "/drinks", method = RequestMethod.GET)
    public String drink() {
        return "jiaduoli/news/drink";
    }

    @RequestMapping(value = "/tea", method = RequestMethod.GET)
    public String tea() {
        return "jiaduoli/news/tea";
    }
}
