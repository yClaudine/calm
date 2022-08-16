package kr.or.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.member.model.vo.Member;

@Repository
public class MemberDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	//join 회원가입
	public int join(Member m) {
		int result = sqlSession.insert("member.join",m);
		return result;
	}

	//로그인
	public Member login(Member m) {
		Member member = sqlSession.selectOne("member.login",m);
		return member;
	}

	//새 비밀번호로 변경
	public int newPwMember(Member m) {
		return sqlSession.update("member.newPw",m);
	}
}
