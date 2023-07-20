package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.model.Yea_BoardVO;
import org.zerock.model.Yea_Criteria;

@Service
public interface Yea_BoardService {
	/* 게시판 등록 */
    public void enroll(Yea_BoardVO board);
    
    /* 게시판 목록 */
    public List<Yea_BoardVO> getList();
    
    //게시판 조회
    public Yea_BoardVO getPage(int bno);
    
    //게시판 수정
    public int modify(Yea_BoardVO board);
    
    //게시판 삭제
    public int delete(int bno);
    
    //게시판 목록(페이징)적용
    public List<Yea_BoardVO> getListPaging(Yea_Criteria cri);
    
    //게시물 총 개수
  	public int getTotal(Yea_Criteria cri);
  	
}


















