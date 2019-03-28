package com.board.mapper;

import java.util.List;

import com.board.domain.BoardVO;
 
public interface BoardMapper {
 
    // 사용자 생성
	public void boardInsert(BoardVO board)throws Exception;
    
    // 사용자 출력
	public List<BoardVO>boardList()throws Exception;
	
	// 사용자 출력
	public BoardVO boardView(int bno)throws Exception;
	
	// 사용자 정보 변경
	public void boardUpdate(BoardVO vo)throws Exception;
	
	// 사용자 삭제
	public void boardDelete(int bno)throws Exception;
}