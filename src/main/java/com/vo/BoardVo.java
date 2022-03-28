package com.vo;

import java.util.Date;

public class BoardVo {
	private int bno;
	private String title;
	private String content;
	private String wirter;
	private Date regate;
	private int viewcnt;
	
	public BoardVo() {
		super();
		
	}

	public BoardVo(int bno, String title, String content, String wirter, Date regate, int viewcnt) {
		super();
		this.bno = bno;
		this.title = title;
		this.content = content;
		this.wirter = wirter;
		this.regate = regate;
		this.viewcnt = viewcnt;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWirter() {
		return wirter;
	}

	public void setWirter(String wirter) {
		this.wirter = wirter;
	}

	public Date getRegate() {
		return regate;
	}

	public void setRegate(Date regate) {
		this.regate = regate;
	}

	public int getViewcnt() {
		return viewcnt;
	}

	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	

}
