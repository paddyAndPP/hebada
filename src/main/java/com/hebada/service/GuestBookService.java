package com.hebada.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.hebada.request.GuestBookRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.hebada.entity.GuestBook;
import com.hebada.repository.GuestBookDao;
import com.hebada.repository.PageResults;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Map;

@Service
public class GuestBookService {

	@Autowired
	@Qualifier("guestBookDao")
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

	//@Transactional(propagation = Propagation.REQUIRED)
	public boolean delete(int id){
		return guestBookdao.delete(id);
	}

	//@Transactional(propagation = Propagation.REQUIRED)
	public boolean update(int id , Integer status , String note){
		GuestBook guestBook = guestBookdao.get(id);
		if(null != guestBook){
			if(null != note && !"".equals(note)){
				guestBook.setNote(note);
				guestBook.setStatus(status);
				ObjectMapper mapper = new ObjectMapper();
				try {
					System.out.println(mapper.writeValueAsString(guestBook));
				}catch(Exception e){
					e.printStackTrace();
				}
				guestBookdao.update(guestBook);
				System.out.println("follow successfully");
				return true;
			}
		}
		return false;
	}
}
