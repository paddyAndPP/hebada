package com.hebada.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.hebada.request.GuestBookRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hebada.entity.GuestBook;
import com.hebada.repository.GuestBookDao;
import com.hebada.repository.PageResults;

@Service

public class GuestBookService {

	@Autowired
	private GuestBookDao guestBookdao;

	public String findByPage(GuestBookRequest guestBookRequest) {
		PageResults<GuestBook> list = guestBookdao.findByPage(guestBookRequest.getPage(),guestBookRequest.getRows(),guestBookRequest.getParam());
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
