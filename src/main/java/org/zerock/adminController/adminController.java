package org.zerock.adminController;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.dto.MemberDTO;
import org.zerock.service.MemberService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/admin/*")
@RequiredArgsConstructor
public class adminController {
	
	private final MemberService memberService;
	
	// 관리자페이지 이동
	@GetMapping("/adminMain")
		public String adminPage() {
			return null;
	}
		
	
	
	// 상품 등록 페이지 이동
	@GetMapping("/goodsEnroll")
	public String goodsEnroll() {
		return null;
	}
	
	
	
	
	
	
	// 회원관리
	@GetMapping("/memberManage")
	public String findAll(Model model) {
		List<MemberDTO> memberList = memberService.memberList();
		model.addAttribute("memberList2", memberList);
		return "/admin/memberManage";
	}
	
	
}
