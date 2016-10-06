package com.please.please.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.please.please.dto.QnaBean;
import com.please.please.service.QnaAction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class QnaController {

	// setter() 메서드를 만들지 않아도 쉽게 setter DI 를 만들수 있다.
	// servlet-context.xml파일에서 빈의 id(boardService)와 동일한 이름을 가진 멤버변수로 setter
	// DI된다.

	@Autowired
	private QnaAction qnaAction;

	/*
	 * public void setBoardService(BoardServiceImpl boardService) {
	 * this.boardService = boardService; }
	 */
	// setter DI설정

	/* 게시판 글쓰기 폼 */
	@RequestMapping(value = "/QandA_write.qna")
	public String board_write() {
		return "QandA/QandA_write";
	}

	/* 게시판 저장 */
	@RequestMapping(value = "/QandA_write_ok.qna", method = RequestMethod.POST)
	public String board_write_ok(@ModelAttribute QnaBean qna)
			throws Exception {

		System.out.println("들어옴");
		//boardService.insert(board);// 저장 메서드 호출

		// response.sendRedirect("board_list.nhn");
		// 게시물 목록으로 이동

//		return "redirect:/QandA_list.qna";
		return "d";
	}

	/* 게시판 목록 */
	@RequestMapping(value = "/QandA_list.qna")
	public ModelAndView list(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		Map<String, Object> boardlist = qnaAction.board_list(request,
				response);

		ModelAndView boardListM = new ModelAndView("QandA/QandA_list");
		boardListM.addAllObjects(boardlist);

		return boardListM;
	}

	
	/* 게시판 내용보기,삭제폼,수정폼,답변글폼 */
//	@RequestMapping(value = "/board_cont.nhn")
//	public ModelAndView board_cont(@RequestParam("item_num") int board_num,
//			@RequestParam("page") String page,
//			@RequestParam("state") String state, HttpServletResponse response)
//			throws Exception {
//
//		if (state.equals("cont")) { // 내용보기일때만
//			qnaAction.hit(board_num); // 조회수 증가
//		}
//
//		QandA_BoardBean board = qnaAction.board_cont(board_num);
//
//		ModelAndView contM = new ModelAndView();
//		contM.addObject("bcont", board);
//		contM.addObject("page", page);
//
//		if (state.equals("cont")) {// 내용보기일때
//			contM.setViewName("board/board_cont");// 내용보기 페이지 설정
//			// String board_cont = board.getBoard_content().replace("\n",
//			// "<br/>");
//			// 글내용중 엔터키 친부분을 웹상에 보이게 할때 다음줄로 개행
//			// contM.addObject("board_cont", board_cont);
//		} else if (state.equals("edit")) {// 수정폼
//			contM.setViewName("board/board_edit");
//		} else if (state.equals("del")) {// 삭제폼
//			contM.setViewName("board/board_del");
//		} else if (state.equals("reply")) {// 답변달기 폼
//			contM.setViewName("board/board_reply");
//		}
//		return contM;
//	}

	
	/* 게시판 수정 */
//	@RequestMapping(value = "/board_edit_ok.qna", method = RequestMethod.POST)
//	public String board_edit_ok(@ModelAttribute QandA_BoardBean b,
//			@RequestParam("page") String page, HttpServletResponse response)
//			throws Exception {
//
//		// 수정 메서드 호출
//		int result = qnaAction.edit(response, b);
//
//		if (result == 0) {
//			return null;
//		} else {
//			return "redirect:/item_cont.qna?item_num=" + b.getItem_num()
//					+ "&page=" + page + "&state=cont";
//		}
//	}

	
	/* 게시판 삭제 */
//	@RequestMapping(value = "/board_del_ok.qna", method = RequestMethod.POST)
//	public String board_del_ok(@RequestParam("item_num") int item_num,
//			@RequestParam("page") int page,
//			@RequestParam("pwd") String item_pass, HttpServletResponse response)
//			throws Exception {
//
//		int result = qnaAction.del_ok(response, item_num, item_pass);
//
//		if (result == 0) {
//			return null;
//		} else {
//			return "redirect:/item_list.qna?page=" + page;
//		}
//	}

	
	/* 게시판 답변달기 저장 */
//	@RequestMapping(value = "/board_reply_ok.qna", method = RequestMethod.POST)
//	public String board_reply_ok(@ModelAttribute QandA_BoardBean b,
//			@RequestParam("page") String page) throws Exception {
//
//		qnaAction.reply_ok(b);
//
//		return "redirect:/item_list.qna?page=" + page;
//	}
	
}
