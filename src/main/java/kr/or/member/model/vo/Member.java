package kr.or.member.model.vo;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Member {
	private int memberNo;
	private String memberName;
	private String memberPw;
	private String email;
	private String imageFilepath;
	private int grade;
	private int report;
	private int warning;
}
