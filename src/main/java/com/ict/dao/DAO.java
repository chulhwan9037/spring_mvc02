package com.ict.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DAO {
	
	// 오류 찾아보기 위해 
	private static final Logger logger = LoggerFactory.getLogger(DAO.class);
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public List<VO> getGuestBook2List() {
		try {
			return sqlSessionTemplate.selectList("guestbook2.list");
		} catch (Exception e) {
			logger.info("로거오류");
			System.out.println("시스아웃오류");
		}
		return null;
	}
	
	public int getGuestBook2Insert(VO vo) {
		try {
			return sqlSessionTemplate.insert("guestbook2.insert", vo);
		} catch (Exception e) {
			System.out.println("오류");
		}
		return -1;
	}
	
	public VO getGuestBook2Detail(String idx) {
		try {
			return sqlSessionTemplate.selectOne("guestbook2.detail", idx);
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	
	public int getGuestBook2Delete(String idx) {
		try {
			return sqlSessionTemplate.delete("guestbook2.delete", idx);
		} catch (Exception e) {
			System.out.println(e);
		}
		return -1;
		
	}
	
	
	public int getGuestBook2Update(VO vo) {
		try {
			return sqlSessionTemplate.update("guestbook2.update", vo);
		} catch (Exception e) {
			System.out.println(e);
		}
		return -1;
	}
}






























