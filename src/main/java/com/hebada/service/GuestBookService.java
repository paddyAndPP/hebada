package com.hebada.service;

import java.util.List;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hebada.entity.GuestBook;
import com.hebada.repository.GuestBookDao;
import com.hebada.repository.PageResults;

@Service

public class GuestBookService {

	@Autowired
	private GuestBookDao guestBookdao;

	public String findByPage(int page,int row) {
		PageResults<GuestBook> list = guestBookdao.findByPage(page, row);
		ObjectMapper mapper = new ObjectMapper();
		String json = null;

		try {
			json = mapper.writeValueAsString(list);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return json;
	}
}
