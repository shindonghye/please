package com.please.please.dto;

import java.util.Date;

public class QandA_BoardBean {		

		private int item_num;
		private String item_writer; //작성자
		private String item_pass;   //비번
		private String item_subject; //글제목
		private String item_content; //글내용
		private String item_email; //이메일
		private String item_secret; //비밀글 설정
		private String item_img; //IMG 파일이름
		private String item_overlap; //중복방지 보안문자
		private String item_infoagree; // 개인정보 수집 및 이용동의
		private int item_re_ref; //글그룹번호
		private int item_re_lev; //화면에 보이는 답변글 위치번호
		private int item_re_seq; //답변글 레벨 순서
		private int item_readcount; //조회수증가
		private String item_date; //글 등록날짜
		
		
		public int getItem_num() {
			return item_num;
		}

		public void setItem_num(int item_num) {
			this.item_num = item_num;
		}

		public String getItem_writer() {
			return item_writer;
		}


		public void setItem_writer(String item_writer) {
			this.item_writer = item_writer;
		}


		public String getItem_pass() {
			return item_pass;
		}


		public void setItem_pass(String item_pass) {
			this.item_pass = item_pass;
		}


		public String getItem_subject() {
			return item_subject;
		}


		public void setItem_subject(String item_subject) {
			this.item_subject = item_subject;
		}


		public String getItem_content() {
			return item_content;
		}


		public void setItem_content(String item_content) {
			this.item_content = item_content;
		}


		public String getItem_email() {
			return item_email;
		}


		public void setItem_email(String item_email) {
			this.item_email = item_email;
		}


		public String getItem_secret() {
			return item_secret;
		}


		public void setItem_secret(String item_secret) {
			this.item_secret = item_secret;
		}


		public String getItem_img() {
			return item_img;
		}


		public void setItem_img(String item_img) {
			this.item_img = item_img;
		}


		public String getItem_overlap() {
			return item_overlap;
		}


		public void setItem_overlap(String item_overlap) {
			this.item_overlap = item_overlap;
		}


		public String getItem_infoagree() {
			return item_infoagree;
		}


		public void setItem_infoagree(String item_infoagree) {
			this.item_infoagree = item_infoagree;
		}


		public int getItem_re_ref() {
			return item_re_ref;
		}


		public void setItem_re_ref(int item_re_ref) {
			this.item_re_ref = item_re_ref;
		}


		public int getItem_re_lev() {
			return item_re_lev;
		}


		public void setItem_re_lev(int item_re_lev) {
			this.item_re_lev = item_re_lev;
		}


		public int getItem_re_seq() {
			return item_re_seq;
		}


		public void setItem_re_seq(int item_re_seq) {
			this.item_re_seq = item_re_seq;
		}


		public int getItem_readcount() {
			return item_readcount;
		}


		public void setItem_readcount(int item_readcount) {
			this.item_readcount = item_readcount;
		}


		public String getItem_date() {
			return item_date;
		}

		public void setBoard_date(String board_date) {
			this.item_date = board_date.substring(0,10);
		}	
		
	}

