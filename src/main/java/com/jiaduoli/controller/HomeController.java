package com.jiaduoli.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by paddy.luo on 2016/12/18.
 */
@Controller
@RequestMapping("/jdl")
public class HomeController {

    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public String index() {
        return "jiaduoli/index";
    }

    //保险知识
    @RequestMapping(value = "/bxzs" ,method = RequestMethod.GET)
    public String bxzs(){
        return "jiaduoli/bxzs";
    }

    //公司介绍
    @RequestMapping(value = "/gsjs" ,method = RequestMethod.GET)
    public String gsjs(){
        return "jiaduoli/gsjs";
    }

    //公司新闻
    @RequestMapping(value = "/gsxw" ,method = RequestMethod.GET)
    public String gsxw(){
        return "jiaduoli/gsxw";
    }

    //关于我们
    @RequestMapping(value = "/gywm" ,method = RequestMethod.GET)
    public String gywm(){
        return "jiaduoli/gywm";
    }

    //加盟政策
    @RequestMapping(value = "/jmzc" ,method = RequestMethod.GET)
    public String jmzc(){
        return "jiaduoli/jmzc";
    }
    //动态信息
    @RequestMapping(value = "/dtxx" ,method = RequestMethod.GET)
    public String dtxx(){
        return "jiaduoli/dtxx";
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
    public String wlsc(){
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
    //资质荣誉
    @RequestMapping(value = "/ryzz" ,method = RequestMethod.GET)
    public String zzry(){
        return "jiaduoli/ryzz";
    }
}
