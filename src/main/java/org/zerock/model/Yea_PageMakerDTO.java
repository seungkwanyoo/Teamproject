package org.zerock.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Yea_PageMakerDTO {


	//시작페이지
	private int startPage;
	
	//끝 페이지
	private int endPage;
	
	//이전 페이지, 다음 페이지 존재 유무
	private boolean prev, next;
	
	//전체 게시물 수
	private int total;
	
	//현재 페이지, 페이지당 게시물 표시수  정보(pageNum(현재페이지)의 변수 값을 얻기위해 선언)
	private Yea_Criteria cri;

	//셍성자
	public Yea_PageMakerDTO(Yea_Criteria cri, int total) {
		this.cri = cri;
		this.total= total;
		
		//마지막  페이지
		this.endPage =(int)(Math.ceil(cri.getPageNum()/10.0))*10;
		
		//시작페이지
		this.startPage = this.endPage - 9;
		
		//전체 마지막 페이지
		int realEnd = (int)(Math.ceil(total * 1.0/cri.getAmount()));
		
		
		//전체 마지막 페이지(realend)가 화면에 보이는 마지막페이지(endPage)보다 작은 경우, 보이는 페이지(endPage) 값 조정
		if(realEnd < this.endPage) {
            this.endPage = realEnd;
        }
        
        // 시작 페이지(startPage)값이 1보다 큰 경우 true 
        this.prev = this.startPage > 1;
        
        // 마지막 페이지(endPage)값이 1보다 큰 경우 true 
        this.next = this.endPage < realEnd;
        
      
	}



}





