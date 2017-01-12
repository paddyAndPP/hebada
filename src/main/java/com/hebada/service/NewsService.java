package com.hebada.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.hebada.entity.News;
import com.hebada.entity.User;
import com.hebada.repository.NewsRepository;
import com.hebada.repository.PageResults;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.Date;

/**
 * Created by paddy.luo on 2016/12/14.
 */
@Service
public class NewsService {

    @Autowired
    private NewsRepository newsRepository;

    public News get(int id) {
        return newsRepository.get(id);
    }

    public void save(News news){
        News currnetNews = newsRepository.get(news.getId());
        if(currnetNews == null) {
            news.setPublishTime(new Timestamp(System.currentTimeMillis()));
            newsRepository.save(news);
        }else{
            currnetNews.setTitle(news.getTitle());
            currnetNews.setTop(news.isTop());
            currnetNews.setContent(news.getContent());
            currnetNews.setPublishTime(new Timestamp(System.currentTimeMillis()));
            newsRepository.update(currnetNews);
        }
    }

    public PageResults findByPage(int page, int rows, String title){
        return  newsRepository.findByPage(page,rows,title);
    }

    public void delete(Integer id) {
        News news = newsRepository.get(id);
        news.setDelete(true);
        newsRepository.update(news);
    }
}
