package kr.or.member.model.service;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.or.member.model.vo.Member;

@Component //객체 만들기
@Aspect //Aop적용 객체
public class PasswordEncAdvice {
	@Autowired
	private SHA256Enc enc;
	
	//MemberService에서 ~~Member로 끝나는 메소드 중에 매개변수가 vo.Member 1개인 것을 나타내는 표현식
	//비밀번호 암호화 된 거 필요한 메소드들만 그렇게 미리 설정해뒀음
	//로그인, 회원가입, 마이페이지 업데이트(->이거는 이제 memberUpdate로 이름 수정해서 뺌)
	@Pointcut(value="execution(* kr.or.member.model.service.MemberService.*Member(kr.or.member.model.vo.Member))")
	public void encPointcut() {}
	//시점
	@Before(value="encPointcut()")
	public void encPassword(JoinPoint jp) {
		String methodName = jp.getSignature().getName();
		Object[] args = jp.getArgs();	//무조건 길이는 1이고, 멤버 타입이 나옴
		Member m = (Member)args[0];
		String beforePw = m.getMemberPw(); //null나옴
		try {
			String encPw = enc.endDate(beforePw);
			m.setMemberPw(encPw);
			System.out.println("암호화 된 비밀번호 : "+encPw);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("암호화 전 메소드 : "+methodName);
		System.out.println("암호화 전 비밀번호 : "+beforePw);
	}
}