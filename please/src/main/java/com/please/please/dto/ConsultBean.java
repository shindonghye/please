package com.please.please.dto;

import java.sql.Date;

public class ConsultBean {
	private int con_no;
	private String con_subject;
	private String con_writer;
	private String con_ron;
	private Date con_date;
	private String con_content;
	private int con_re_ref;
	private int con_re_lev;
	
	public int getCon_no() {
		return con_no;
	}
	public void setCon_no(int con_no) {
		this.con_no = con_no;
	}
	public String getCon_subject() {
		return con_subject;
	}
	public void setCon_subject(String con_subject) {
		this.con_subject = con_subject;
	}
	public String getCon_writer() {
		return con_writer;
	}
	public void setCon_writer(String con_writer) {
		this.con_writer = con_writer;
	}
	public String getCon_ron() {
		return con_ron;
	}
	public void setCon_ron(String con_ron) {
		this.con_ron = con_ron;
	}
	public Date getCon_date() {
		return con_date;
	}
	public void setCon_date(Date con_date) {
		this.con_date = con_date;
	}
	public String getCon_content() {
		return con_content;
	}
	public void setCon_content(String con_content) {
		this.con_content = con_content;
	}
	public int getCon_re_ref() {
		return con_re_ref;
	}
	public void setCon_re_ref(int con_re_ref) {
		this.con_re_ref = con_re_ref;
	}
	public int getCon_re_lev() {
		return con_re_lev;
	}
	public void setCon_re_lev(int con_re_lev) {
		this.con_re_lev = con_re_lev;
	}
	
	
	
}

