package org.zerock.memberController;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.dto.MemberDTO;
import org.zerock.service.MemberService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/signup")
@RequiredArgsConstructor
public class MemberController {
		
		private final MemberService memberService;
	
		@GetMapping("/signup")
		public String Signup() {
			return "/signup/signup";
		}
		
		@PostMapping("/memberIdChk")
		@ResponseBody
		public String memberIdChkP(String memberId) {
			
			int result = memberService.idCheck(memberId);
			
			if (result != 0) {
				return "fail";
			} else {
				return "success";
			}
		}

		// signup.jsp에있는 form데이터를 받는 controller
		@PostMapping("/signup")
		public String Signup(@ModelAttribute MemberDTO dto, Model model) {
		
			int saveResult = memberService.save(dto);
			
			if (saveResult > 0) {
				return "redirect:/"; 
			} else {
				System.out.println("오류");
				return "/";
			}
			
		}
		
		
		
		
		// 로그인 을 하면 post방식으로 데이터를 보냄 (검증)
		@PostMapping("/login")
		public String login(@ModelAttribute MemberDTO dto, Long memberNum,  Model model, HttpServletRequest request, RedirectAttributes rttr) {
			HttpSession session = request.getSession();
			MemberDTO lvo = memberService.login(dto);

			
			if(lvo == null) {
				int result = 0;
				rttr.addFlashAttribute("result", result);
				return "redirect:/";
			} 

			
			session.setAttribute("member", lvo);
		
			return "redirect:/";
		}
		
		// 로그인을 하면 페이지이동 ! ->여기선 메인으로 
		@GetMapping("/login")
		public String memberList(Model model, Long memberNum) {
			List<MemberDTO> memberList = memberService.memberList();
			model.addAttribute("memberList2", memberList);
			return "redirect:/";
		}
		
		// 메인페이지 로그아웃
		@GetMapping("/logout.do")
		public String logoutMainGET(HttpServletRequest request) {
			HttpSession session = request.getSession();
			
			// "invalidate()" 메서드의 경우 세션 전체를 무효화하는 메서드
			session.invalidate();
			return "redirect:/";  
		}
		

		
	}




















