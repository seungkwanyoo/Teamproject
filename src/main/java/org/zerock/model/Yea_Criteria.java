package org.zerock.model;



import java.util.Arrays;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString
public class Yea_Criteria {
	
	//현재페이지
	private int pageNum;
	
	//한 페이지 당 보여질 게시물의 갯수Amount
	private int amount;
	
	//기본 생성자 pageNum = 1, amount = 10
    public Yea_Criteria() {
        this(1,10);
    }

    //생성자-> 원하는 pageNum, 원하는 amount
	public Yea_Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	
	//검색 키워드
	private String keyword;
	

		

}











