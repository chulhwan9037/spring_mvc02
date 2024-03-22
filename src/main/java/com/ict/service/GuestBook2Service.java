package com.ict.service;

import java.util.List;

import com.ict.dao.VO;
	// 인터페이스는 객체 생성 못함 어노테이션 안됨
public interface GuestBook2Service {
	
	// 전체보기
	List<VO> getGuestBook2List();
	
	// 상세보기
	VO getGuestBook2Detail(String idx);
	
	// 삽입
	int getGuestBook2Insert(VO vo);
	
	// 삭제
	int getGuestBook2Delete(String idx);
	
	// 수정
	int getGuestBook2Update(VO vo);
	
}


























