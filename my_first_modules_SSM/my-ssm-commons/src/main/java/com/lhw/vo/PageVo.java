package com.lhw.vo;

import java.io.Serializable;

public class PageVo implements Serializable {
	//每页显示的商品条数
	private int length;
	//一共有几页
	private int totalPage;
	//开始索引
	private int start;
	//关键词
	private String keyword;
	//分页标识(纯粹标识用的)
	private int draw;

	public int getDraw() {
		return draw;
	}

	public void setDraw(int draw) {
		this.draw = draw;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public int getLength() {
		return length;
	}

	public void setLength(int length) {
		this.length = length;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}
}
