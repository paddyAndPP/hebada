package com.hebada.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.hebada.request.GuestBookRequest;
import com.hebada.request.PageData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hebada.entity.GuestBook;
import com.hebada.repository.GuestBookDao;
import com.hebada.repository.PageResults;

import java.util.Map;

@Service

public class GuestBookService {

	@Autowired
	private GuestBookDao guestBookdao;

	public String findByPage(int page,int rows,String name,Integer status) {
		PageResults<GuestBook> list = guestBookdao.findByPage(page,rows,name,status);
		ObjectMapper mapper = new ObjectMapper();
		String json = "";
		try {
			json = mapper.writeValueAsString(list);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return json;
	}
}
