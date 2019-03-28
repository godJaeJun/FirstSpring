package com.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.board.domain.BoardVO;
import com.board.mapper.BoardMapper;

// RestController는 @Controller와 @ResponseBody가 합쳐진 어노테이션이다. 
// view가 필요없는 API만 지원하는 서비스에서 사용되는데 현재는 view가 필요하기 때문에 @Controller를 사용해준다.
@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private BoardMapper boardMapper;

	// 회원 목록
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView board() throws Exception {
		List<BoardVO> list = boardMapper.boardList();

		return new ModelAndView("boardList", "list", list);
	}

	// 회원 생성 페이지로 이동하기
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public ModelAndView wirteForm() throws Exception {
		return new ModelAndView("boardWrite");
	}

	// 회원 생성하기( POST )
	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public String write(@ModelAttribute("BoardVO") BoardVO board) throws Exception {
		boardMapper.boardInsert(board);
		return "redirect://localhost:8080/board";
	}

	// 회원 상세보기
	@RequestMapping(value = "/{bno}", method = RequestMethod.GET)
	public ModelAndView view(@PathVariable("bno") int bno) throws Exception {

		BoardVO board = boardMapper.boardView(bno);

		return new ModelAndView("boardView", "board", board);
	}

	// 회원 수정 페이지
	@RequestMapping(value = "/create/{bno}", method = RequestMethod.GET)
	public ModelAndView updateForm(@PathVariable("bno") int bno) throws Exception {
		BoardVO board = boardMapper.boardView(bno);

		return new ModelAndView("boardUpdate", "board", board);
	}

	// 게시글 수정(PATCH)
	@RequestMapping(value = "/create/{bno}", method = RequestMethod.PATCH)
	public String update(@ModelAttribute("BoardVO") BoardVO board, @PathVariable("bno") int bno) throws Exception {

		boardMapper.boardUpdate(board);

		return "redirect://localhost:8080/board/" + bno;
	}

	// 게시글 삭제(DELETE)
	@RequestMapping(value = "/create/{bno}", method = RequestMethod.DELETE)
	public String delete(@PathVariable("bno") int bno) throws Exception {

		boardMapper.boardDelete(bno);

		return "redirect://localhost:8080/board";
	}
}
