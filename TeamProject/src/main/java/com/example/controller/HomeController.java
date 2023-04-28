package com.example.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.domain.MemberDTO;
import com.example.service.UserService;

@Controller
public class HomeController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/")
	public String home() {return "home";}
	
	 @GetMapping("/login")
	    public String login() {return "member/loginMember"; }
	 
	 @PostMapping("/processLoginMember")
	  public String login(@RequestParam("id") String id, @RequestParam("password") String password,
		         HttpSession session, RedirectAttributes rttr) {
		      
		 	 MemberDTO user = userService.login(id, password);  //UserService를 통해 로그인 정보 확인
		      
		      if(user == null) { //로그인 실패 시
		         rttr.addFlashAttribute("msg", "로그인에 실패하였습니다. 아이디와 비밀번호를 확인해주세요.");
		         return "redirect:/login";
		      } else { //로그인 성공 시
		         session.setAttribute("loginUser", user); //세션에 로그인 정보 저장
		         return "redirect:/";
		      }
		   }
	 
	 @GetMapping("/logout")
	 public String logoutMember(HttpSession session) {
	     session.invalidate(); // 세션 무효화
	     return "redirect:/";
	 }
	 
	 @GetMapping("/addMember")
	    public String addMember() {return "member/addMember"; }
	 
	
	 
	 @GetMapping("/updateMember")
	    public String updateMember() {return "member/updateMember"; }
	 
	
}

