package kr.or.member.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.member.model.service.MemberService;
import kr.or.member.model.vo.Member;

@Controller
public class MemberController {
	@Autowired
	private MemberService service;
		
	//kakao 로그인 이동
	@RequestMapping(value="kakao.do")
	public String kakaoAPI() {
        StringBuffer loginUrl = new StringBuffer();
        loginUrl.append("https://kauth.kakao.com/oauth/authorize?client_id=");
        loginUrl.append("6e755c6a2e85f8509339fbb913579815"); //[내 애플리케이션]의 앱 KEY (REST API)
        loginUrl.append("&redirect_uri=");
        loginUrl.append("http://localhost:8080/kakao_callback"); //[내 애플리케이션]의 redirect URL
        loginUrl.append("&response_type=code");
        
        return "redirect:"+loginUrl.toString();
	}
	
	/*kakao 로그인했을 때 리다이렉트
	@RequestMapping(value="kakao_callback")
	public String redirectKakaoAPI(@RequestParam String code, HttpSession session) {
		//String code 값을 @RequestParam을 이용해 필수적으로 받게 되어 있음
		//넘어온 code값을 찍어보면 로그인 버튼을 눌렀을 때 임시 토큰 값이 넘어옴
		//그 토큰 값을 service의 getReturnAccessToken 메소드에 넣어줌
		System.out.println(code);

        //접속토큰 get
        String kakaoToken = service.getReturnAccessToken(code);
        
        //접속자 정보 get
        Map<String,Object> result = service.getUserInfo(kakaoToken);
        System.out.println("컨트롤러 출력"+result.get("nickname")+result.get("profile_image"));
        Member member =new Member();
        member.setMemberName((String)result.get("nickname"));
        member.setImageFilepath((String)result.get("profile_image"));
        
        session.setAttribute("member", member);
        //로그아웃 처리 시, 사용할 토큰 값
        session.setAttribute("kakaoToken", kakaoToken);
		
		return "redirect:/";
	}
	*/
	//join Frm 이동
	@RequestMapping(value="joinFrm.do")
	public String joinFrm() {
		return "member/joinFrm";
	}
	
	//join 회원가입 - AOP 암호화
	@RequestMapping(value="join.do")
	public String join(Member m) {
		System.out.println(m);
		int result = service.joinMember(m); //암호화
		if(result==1) {
			return "redirect:/";
		}else{
			return "redirect:/joinFrm.do";			
		}
	}
	//로그인 - AOP 암호화
	@RequestMapping(value="login.do")
	public String login(Member m, HttpSession session) {
		Member member = service.loginMember(m);
		if(member!=null) {
			session.setAttribute("m", member);
		}
		return "redirect:/";
	}
	
	//로그아웃
	@RequestMapping(value="logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	//마이페이지 이동
	@RequestMapping(value="mypage.do")
	public String mypage(Member m, String memberPwNew) {
		int result = service.changePw(m,memberPwNew);
		if(result == -1) {
			return "member/mypage";
		}else if(result > 0){ //성공
			return "redirect:/";
		}else {			
			return "member/mypage";
		}
	}
	
	//새 비밀번호로 변경
	@RequestMapping(value="newPw.do")
	public String newPw(Member m, String memberPwNew) {
		int result = service.changePw(m,memberPwNew);
		if(result == -1) {
			return "member/mypage";
		}else if(result > 0) {
			return "redirect:/";
		}else {
			return "member/mypage";
		}
	
	}
	
	
}
