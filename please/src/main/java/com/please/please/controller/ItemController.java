package com.please.please.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.please.please.dto.ItemBean;
import com.please.please.service.ItemAction;

@Controller
public class ItemController {

	@Autowired
	private ItemAction itemAction;
	
	/*@RequestMapping("/Login.item")
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		// 이동할 페이지 설정
		mav.setViewName("item/login");
		return mav;
	}*/
	
	
	@RequestMapping("/item_Ok.item")
	public ModelAndView item_ok(@ModelAttribute ItemBean ib) {
		ModelAndView mav = new ModelAndView();
		System.out.println("컨트롤러들어옴1");
		
		boolean result = itemAction.insertItem(ib);
		mav.setViewName("index");
		return mav;
	}
	
	@RequestMapping("/MainView.item")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		return mav;
	}

/*	@RequestMapping("/JoinProcess.item")
	public String insertItem(@ModelAttribute ItemBean item) throws Exception {
		
		itemAction.insertItem(item);
		
		return "redirect:/login.log";
	}*/
	
}
