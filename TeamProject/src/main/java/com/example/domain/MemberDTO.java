package com.example.domain;

import lombok.Data;

@Data
public class MemberDTO {
	
	private String id;
	private String password;
	private String name;
	private String email;
	private String nickname;
}
