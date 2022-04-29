package com.lcomputerstudy1.example.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.lcomputerstudy1.example.domain.Board;
import com.lcomputerstudy1.example.domain.BoardFile;
import com.lcomputerstudy1.example.domain.Pagination;
import com.lcomputerstudy1.example.domain.Search;
import com.lcomputerstudy1.example.mapper.BoardMapper;

@Service("BoardServiceImpl")
public class BoardServiceImpl implements BoardService {

		@Autowired BoardMapper boardmapper;
		@Override
		public List<Board> selectBoardList(Pagination pagination){
			return boardmapper.selectBoardList(pagination);
		}
		
		@Override
		public List<Board> selectSearchPost(Pagination pagination){
			return boardmapper.selectSearchPost(pagination);
		}
		
		@Override
		public int boardCount() {
			return boardmapper.boardCount();
		}
		
		@Override
		public int searchCount(Search search) {
			return boardmapper.searchCount(search);
		}
		
		@Override
		public Board detailBoardList(Board board) {
			return boardmapper.detailBoardList(board);
		}
		
		@Override
		public void RegistBoard(Board board) {
			boardmapper.RegistBoard(board);
		}
		
		@Override
		public void updateReply(Board board) {
			boardmapper.updateReply(board);
		}
		
		@Override
		public void updatebView(Board board) {
			boardmapper.updatebView(board);
		}
		
		@Override
		public void updatebGroup(int bId) {
			boardmapper.updatebGroup(bId);
		}
		
		@Override
		public void editBoard(Board board) {
			boardmapper.editBoard(board);
		}
		
		@Override
		public void delOriginBoard(Board board) {
			boardmapper.delOriginBoard(board);
		}
		
		@Override
		public void delReplyBoard(Board board) {
			boardmapper.delReplyBoard(board);
		}
		
		@Override
		public List<Board> SelectCommentList(Board board) {
			return boardmapper.SelectCommentList(board);
		}
		
		@Override
		public void RegistComment(Board board) {
			boardmapper.RegistComment(board);
		}
		
		@Override
		public void updatecGroup(int cId) {
			boardmapper.updatecGroup(cId);
		}
		
		@Override
		public void updatecOrder(Board board) {
			boardmapper.updatecOrder(board);
		}
		
		@Override
		public void editComment(Board board) {
			boardmapper.editComment(board);
		}
		
		@Override
		public void delOriginComment(Board board) {
			boardmapper.delOriginComment(board);
		}
		
		@Override
		public void delReplyComment(Board board) {
			boardmapper.delReplyComment(board);
		}
		
		@Override
		public void registFile(BoardFile boardfile) {
			boardmapper.registFile(boardfile);
		}
}
