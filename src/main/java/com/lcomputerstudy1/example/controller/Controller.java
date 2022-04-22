package com.lcomputerstudy1.example.controller;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lcomputerstudy1.example.domain.Board;
import com.lcomputerstudy1.example.domain.User;
import com.lcomputerstudy1.example.domain.Pagination;
import com.lcomputerstudy1.example.service.BoardService;
import com.lcomputerstudy1.example.service.UserService;

@org.springframework.stereotype.Controller
public class Controller {
	
	int page = 1;
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());	
	@Autowired BoardService boardservice;
	@Autowired UserService userservice;
	
	@RequestMapping("/")
	public String home(Model model, Pagination pagination) {
		int count = boardservice.boardCount();
		if(pagination.getPage()>0) {
			page = pagination.getPage();
		}
		
		pagination.setCount(count);
		pagination.setPage(page);
		pagination.init();
		
		List<Board> list = boardservice.selectBoardList(pagination);
		
		model.addAttribute("list", list);
		model.addAttribute("pagination", pagination);


		return "/index";
	}
	
	@RequestMapping("/beforeSignUp")
	public String beforeSignUp() {
		return "/signup";
	}
	
	@RequestMapping("/signup")
	public String signup(User user) {
		String encodedPassword = new BCryptPasswordEncoder().encode(user.getPassword());
		
		user.setPassword(encodedPassword);
		user.setAccountNonExpired(true);
		user.setEnabled(true);
		user.setAccountNonLocked(true);
		user.setCredentialsNonExpired(true);
		user.setAuthorities(AuthorityUtils.createAuthorityList("ROLE_USER"));
		
		userservice.createUser(user);
		
		userservice.createAuthorities(user);
		
		return "/login";
	}
	
	@RequestMapping(value="/login")
	public String beforeLogin(Model model) {
		return "/login";
	}
	
	@Secured({"ROLE_ADMIN"})
		@RequestMapping(value="/admin")
		public String admin(Model model) {
			return "/admin";
		}
	
	@Secured({"ROLE_USER"})
		@RequestMapping(value="/user/info")
		public String userInfo(Model model) {
			return "/user_info";
		}
		
		@RequestMapping(value="/denied")
		public String denied(Model model) {
			return "/denied";
		}
		
	@RequestMapping(value="/detailboard")
	public String detailboard(Model model, Board board) {
		boardservice.updatebView(board);
		Board detailboard = boardservice.detailBoardList(board);
		List<Board> c_list = boardservice.SelectCommentList(board);
			
		model.addAttribute("detailboard", detailboard);
		model.addAttribute("c_list", c_list);
		
		return "/detailboard";
	}
	
	@RequestMapping(value="/Before_registboard")
	public String Before_registboard() {
		
		return "/origin_registboard";				
		
	}
	
	@RequestMapping(value="/Before_replyboard")
	public String Before_replyboard(Model model, Board board) {
		
		model.addAttribute("board",board);
		
		return "/reply_registboard";
	}
	
	@RequestMapping(value="/registboardPro")
	public String registboard(Model model, Board board) {
		
		if(board.getbGroup()>0) {
			board.setbOrder(board.getbOrder()+1);
			board.setbDepth(board.getbDepth()+1);
			boardservice.RegistBoard(board);
			boardservice.updateReply(board);
		} else {
			board.setbOrder(1);
			board.setbDepth(0);
			boardservice.RegistBoard(board);
			int bId = board.getbId();
			boardservice.updatebGroup(bId);
		}
		int count = boardservice.boardCount();
		Pagination pagination = new Pagination();
		pagination.setCount(count);
		pagination.setPage(page);
		pagination.init();
		
		List<Board> list = boardservice.selectBoardList(pagination);
		
		model.addAttribute("list", list);
		model.addAttribute("pagination", pagination);
		
		return "/index";			
		
	}
	
	@RequestMapping(value="/Before_editboard")
	public String Before_editboard(Model model, Board board) {
		Board detailboard = boardservice.detailBoardList(board);
		model.addAttribute("detailboard",detailboard);
		
		return "/editboard";
	}
	
	@RequestMapping(value="/editboardPro")
	public String editboardPro(Model model, Board board) {

		boardservice.editBoard(board);
		
		int count = boardservice.boardCount();
		Pagination pagination = new Pagination();
		pagination.setCount(count);
		pagination.setPage(page);
		pagination.init();
		
		List<Board> list = boardservice.selectBoardList(pagination);
		List<Board> c_list = boardservice.SelectCommentList(board);
		
		model.addAttribute("list", list);
		model.addAttribute("c_list", c_list);
		model.addAttribute("pagination", pagination);
		
		return"/index";
	}
	
	@RequestMapping(value="/deleteboard")
	public String deleteboard(Model model, Board board) {
		if(board.getbOrder()==1) {
			boardservice.delOriginBoard(board);
		} else {
			boardservice.delReplyBoard(board);
		}
		
		int count = boardservice.boardCount();
		Pagination pagination = new Pagination();
		pagination.setCount(count);
		pagination.setPage(page);
		pagination.init();
		
		List<Board> list = boardservice.selectBoardList(pagination);
		
		model.addAttribute("list", list);
		model.addAttribute("pagination", pagination);
		
		return"/index";
	}
	
	@RequestMapping(value="/RegistComment")
	public String RegistComment(Model model, Board board) {
		if(board.getcGroup()>0) {
			board.setcOrder(board.getcOrder()+1);
			board.setcDepth(board.getcDepth()+1);
			boardservice.RegistComment(board);
			boardservice.updatecOrder(board);
		} else {
			board.setcOrder(1);
			board.setcDepth(0);
			boardservice.RegistComment(board);
			int cId = board.getcId();
			boardservice.updatecGroup(cId);
		}
		
		Board detailboard = boardservice.detailBoardList(board);
		List<Board> c_list = boardservice.SelectCommentList(board);
		
		model.addAttribute("detailboard", detailboard);
		model.addAttribute("c_list", c_list);
		
		return "/UpdateComment";
	}
	
	@RequestMapping(value="/editComment")
	public String editComment(Model model, Board board) {

		boardservice.editComment(board);
		
		Board detailboard = boardservice.detailBoardList(board);
		List<Board> c_list = boardservice.SelectCommentList(board);
		
		model.addAttribute("detailboard", detailboard);
		model.addAttribute("c_list", c_list);
		
		return "/detailboard";
	}
	
	@RequestMapping(value="/deleteComment")
	public String deleteComment(Model model, Board board) {
		
		if(board.getcDepth()>0) {
			boardservice.delReplyComment(board);
		} else {
			boardservice.delOriginComment(board);
		}
		
		Board detailboard = boardservice.detailBoardList(board);
		List<Board> c_list = boardservice.SelectCommentList(board);
		
		model.addAttribute("detailboard", detailboard);
		model.addAttribute("c_list", c_list);
		
		return "/UpdateComment";
	}
}
