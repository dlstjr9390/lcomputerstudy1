package com.lcomputerstudy1.example.service;

import java.util.List;


import com.lcomputerstudy1.example.domain.Board;
import com.lcomputerstudy1.example.domain.BoardFile;
import com.lcomputerstudy1.example.domain.Pagination;
import com.lcomputerstudy1.example.domain.Search;

public interface BoardService {
	public List<Board> selectBoardList(Pagination pagination);
	
	public List<Board> selectSearchPost(Pagination pagination);
	
	public int boardCount();

	public int searchCount(Search search);
	
	public Board detailBoardList(Board board);
	
	public void RegistBoard(Board board);
	
	public void isimage(Board board, int a);
	
	public void registfile(BoardFile boardfile);
	
	public List<BoardFile> selectFile(Board board );
	
	public void updateReply(Board board);
	
	public void updatebView(Board board);
	
	public void updatebGroup(int bId);
	
	public void editBoard(Board board);
	
	public int isEdit(Board board);
	
	public void delOriginBoard(Board board);
	
	public void delReplyBoard(Board board);
	
	public void delImageFile(Board board);
	
	public List<Board> SelectCommentList(Board board);
	
	public void RegistComment(Board board);
	
	public void updatecGroup(int cId);
	
	public void updatecOrder(Board board);
	
	public void editComment(Board board);
	
	public void delOriginComment(Board board);
	
	public void delReplyComment(Board board);
}


