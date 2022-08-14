package kr.or.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.member.model.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService service;
	
	//join Frm 이동
	@RequestMapping(value="join.do")
	public String joinFrm() {
		return "member/joinFrm";
	}

}
