package com.hebada.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.gson.Gson;
import com.hebada.entity.GuestBook;
import com.hebada.repository.GuestBookDao;
import com.hebada.repository.PageResults;

@Service

public class GuestBookService {

	@Autowired
	private GuestBookDao guestBookdao;
	
	public String findByPage(int page,int row){
		List<GuestBook> list = guestBookdao.findByPage(page, row);
		Gson gson = new Gson();
		return null;
	}
	
}
