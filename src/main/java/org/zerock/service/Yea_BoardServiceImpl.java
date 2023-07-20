package org.zerock.service;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.mapper.Yea_BoardMapper;
import org.zerock.model.Yea_BoardVO;
import org.zerock.model.Yea_Criteria;

@Service
public class Yea_BoardServiceImpl implements Yea_BoardService{
	
	@Autowired
	private Yea_BoardMapper mapper;
	
	//게시판 등록
    @Override
    public void enroll(Yea_BoardVO board) {
        mapper.enroll(board);
    }

    //게시판 목록
	@Override
	public List<Yea_BoardVO> getList() {
		return mapper.getList();
	}

	//게시판 조회
	@Override
	public Yea_BoardVO getPage(int bno) {
		return mapper.getPage(bno);	
	}
	
	
	//게시판 수정
	@Override
	public int modify(Yea_BoardVO board) {
		return mapper.modify(board);
	}

	//게시판 삭제
	@Override
	public int delete(int bno) {
		return mapper.delete(bno);
	}

	
	//게시판 목록(페이징)
	@Override
	public List<Yea_BoardVO> getListPaging(Yea_Criteria cri) {
		return mapper.getListPaging(cri); 
				
	}

	//게시물 총 개수	
	@Override
	public int getTotal(Yea_Criteria cri) {
		return mapper.getTotal(cri);
	}

	
	
}














