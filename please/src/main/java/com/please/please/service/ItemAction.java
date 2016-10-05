package com.please.please.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.please.please.dao.ItemDao;
import com.please.please.dto.ItemBean;

@Service
public class ItemAction {
	
	@Autowired
	private ItemDao itemDao;
	
	public boolean insertItem(ItemBean item) {
		boolean result = false;
				
		if (itemDao.itemInsert(item));
			result = true;
		
		return result;
	}
	
	
/*	@RequestMapping(value = "/item_write_ok.item", method = RequestMethod.POST)
	public String item_write_ok(@ModelAttribute ItemBean item)
			throws Exception {

		itemService.insert(item);// 저장 메서드 호출

		// response.sendRedirect("board_list.nhn");
		// 게시물 목록으로 이동

		return "redirect:/item_list.item";
	}*/
	
/*	@RequestMapping(value = "/item_list.items")
	public ModelAndView list(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		Map<String, Object> itemlist = itemService.item_list(request,
				response);

		ModelAndView itemListM = new ModelAndView("item/item_list");
		itemListM.addAllObjects(itemlist);

		return itemListM;
	}*/

	
/*	 게시판 내용보기,삭제폼,수정폼,답변글폼 
	@RequestMapping(value = "/item_cont.item")
	public ModelAndView item_cont(@RequestParam("item_seq") int item_seq,
			@RequestParam("page") String page,
			@RequestParam("state") String state, HttpServletResponse response)
			throws Exception {

		if (state.equals("cont")) { // 내용보기일때만
			itemService.hit(item_seq); // 조회수 증가
		}

		ItemBean item = itemService.item_cont(item_seq);

		ModelAndView contM = new ModelAndView();
		contM.addObject("icont", item);
		contM.addObject("page", page);

		if (state.equals("cont")) {// 내용보기일때
			contM.setViewName("item/item_cont");// 내용보기 페이지 설정
			// String board_cont = board.getBoard_content().replace("\n",
			// "<br/>");
			// 글내용중 엔터키 친부분을 웹상에 보이게 할때 다음줄로 개행
			// contM.addObject("board_cont", board_cont);
		} else if (state.equals("edit")) {// 수정폼
			contM.setViewName("item/item_edit");
		} else if (state.equals("del")) {// 삭제폼
			contM.setViewName("item/item_del");
		}
		
		return contM;
	}*/

	
/*	 게시판 수정 
	@RequestMapping(value = "/item_edit_ok.nhn", method = RequestMethod.POST)
	public String board_edit_ok(@ModelAttribute ItemBean item,
			@RequestParam("page") String page, HttpServletResponse response)
			throws Exception {

		// 수정 메서드 호출
		int result = itemService.edit(response, item);

		if (result == 0) {
			return null;
		} else {
			return "redirect:/item_cont.nhn?item_num=" + item.getItem_seq()
					+ "&page=" + page + "&state=cont";
		}
	}
*/
	
/*	 게시판 삭제 
	@RequestMapping(value = "/board_del_ok.nhn", method = RequestMethod.POST)
	public String board_del_ok(@RequestParam("board_num") int board_num,
			@RequestParam("page") int page,
			@RequestParam("pwd") String _pass, HttpServletResponse response)
			throws Exception {

		int result = itemService.del_ok(response, board_num, board_pass);

		if (result == 0) {
			return null;
		} else {
			return "redirect:/board_list.nhn?page=" + page;
		}
	}*/

	
/*	 게시판 답변달기 저장 
	@RequestMapping(value = "/item_reply_ok.nhn", method = RequestMethod.POST)
	public String board_reply_ok(@ModelAttribute ItemBean b,
			@RequestParam("page") String page) throws Exception {

		itemService.reply_ok(b);

		return "redirect:/item_list.nhn?page=" + page;
	}*/
}