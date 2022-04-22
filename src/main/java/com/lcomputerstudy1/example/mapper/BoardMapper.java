package com.lcomputerstudy1.example.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;


import com.lcomputerstudy1.example.domain.Board;
import com.lcomputerstudy1.example.domain.Pagination;

@Mapper
public interface BoardMapper {
	public List<Board> selectBoardList(Pagination pagination);
	
	public int boardCount();
	
	public Board detailBoardList(Board board);
	
	public void RegistBoard(Board board);
	
	public void updateReply(Board board);
	
	public void updatebView(Board board);
	
	public void updatebGroup(int bId);
	
	public void editBoard(Board board);
	
	public void delOriginBoard(Board board);
	
	public void delReplyBoard(Board board);
	
	public List<Board> SelectCommentList(Board board);
	
	public void RegistComment(Board board);
	
	public void updatecGroup(int cId);
	
	public void updatecOrder(Board board);
	
	public void editComment(Board board);
	
	public void delOriginComment(Board board);
	
	public void delReplyComment(Board board);

}
