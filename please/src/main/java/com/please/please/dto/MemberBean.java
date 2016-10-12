package com.please.please.dto;

import java.sql.Date;
import java.util.Collection;
import java.util.List;

//회원관리
public class MemberBean {
	private String join_id;
	private String join_pass;
	private String join_passa;
	private String join_passq;
	private String join_name;
	private String join_gender;
	private String join_addr1;
	private String join_addr2;
	private String join_post;
	private String join_phone1;
	private String join_phone2;
	private String join_phone3;
	private String join_email1;
	private String join_email2;
	private Date join_date;
	private int join_state;
	private String join_delcont;
	private Date join_deldate;
	private String join_know;
	private String join_agree;
	private String join_infoagree;
	
	
	public String getJoin_id() {
		return join_id;
	}
	public void setJoin_id(String join_id) {
		this.join_id = join_id;
	}
	public String getJoin_pass() {
		return join_pass;
	}
	public void setJoin_pass(String join_pass) {
		this.join_pass = join_pass;
	}
	public String getJoin_passa() {
		return join_passa;
	}
	public void setJoin_passa(String join_passa) {
		this.join_passa = join_passa;
	}
	public String getJoin_passq() {
		return join_passq;
	}
	public void setJoin_passq(String join_passq) {
		this.join_passq = join_passq;
	}
	public String getJoin_name() {
		return join_name;
	}
	public void setJoin_name(String join_name) {
		this.join_name = join_name;
	}
	public String getJoin_gender() {
		return join_gender;
	}
	public void setJoin_gender(String join_gender) {
		this.join_gender = join_gender;
	}
	public String getJoin_addr1() {
		return join_addr1;
	}
	public void setJoin_addr1(String join_addr1) {
		this.join_addr1 = join_addr1;
	}
	public String getJoin_addr2() {
		return join_addr2;
	}
	public void setJoin_addr2(String join_addr2) {
		this.join_addr2 = join_addr2;
	}
	public String getJoin_post() {
		return join_post;
	}
	public void setJoin_post(String join_post) {
		this.join_post = join_post;
	}
	public String getJoin_phone1() {
		return join_phone1;
	}
	public void setJoin_phone1(String join_phone1) {
		this.join_phone1 = join_phone1;
	}
	public String getJoin_phone2() {
		return join_phone2;
	}
	public void setJoin_phone2(String join_phone2) {
		this.join_phone2 = join_phone2;
	}
	public String getJoin_phone3() {
		return join_phone3;
	}
	public void setJoin_phone3(String join_phone3) {
		this.join_phone3 = join_phone3;
	}
	public String getJoin_email1() {
		return join_email1;
	}
	public void setJoin_email1(String join_email1) {
		this.join_email1 = join_email1;
	}
	public String getJoin_email2() {
		return join_email2;
	}
	public void setJoin_email2(String join_email2) {
		this.join_email2 = join_email2;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	public int getJoin_state() {
		return join_state;
	}
	public void setJoin_state(int join_state) {
		this.join_state = join_state;
	}
	public String getJoin_delcont() {
		return join_delcont;
	}
	public void setJoin_delcont(String join_delcont) {
		this.join_delcont = join_delcont;
	}
	public Date getJoin_deldate() {
		return join_deldate;
	}
	public void setJoin_deldate(Date join_deldate) {
		this.join_deldate = join_deldate;
	}
	public String getJoin_know() {
		return join_know;
	}
	public void setJoin_know(String join_know) {
		this.join_know = join_know;
	}
	public String getJoin_agree() {
		return join_agree;
	}
	public void setJoin_agree(String join_agree) {
		this.join_agree = join_agree;
	}
	public String getJoin_infoagree() {
		return join_infoagree;
	}
	public void setJoin_infoagree(String join_infoagree) {
		this.join_infoagree = join_infoagree;
	}
	
	
	

	
	/*@Override
	public String toString() {
		return "BlogMember [email=" + email + ", pw=" + pw + ", name=" + name
				+ ", image=" + image + ", mobile=" + mobile + ", address1="
				+ address1 + ", address2=" + address2 + ", joinDate="
				+ joinDate + ", loginDate=" + loginDate + ", gubun=" + gubun
				+ "]";
	}*/
}
