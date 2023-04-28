package com.example.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.domain.MemberDTO;
import com.example.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;

	public MemberDTO login(String id, String password) {
		try {
			return userRepository.findByUserIdAndPassword(id, password);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
}
