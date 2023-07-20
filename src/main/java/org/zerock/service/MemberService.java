package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.dto.MemberDTO;
import org.zerock.repository.MemberRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberService {
	
	public final MemberRepository memberRepository;
	
	
	public int save(MemberDTO dto) {
		return memberRepository.save(dto); 
	}


	public MemberDTO login(MemberDTO dto) {
		return memberRepository.login(dto);
	}
	


	public int idCheck(String memberId) {
		return memberRepository.idCheck(memberId);
	}


	public List<MemberDTO> memberList() {
		return memberRepository.memberList();
	}




}
