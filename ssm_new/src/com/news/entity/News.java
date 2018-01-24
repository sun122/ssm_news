package com.news.entity;

import org.springframework.stereotype.Component;

@Component
public class News {
	private Integer newsId;
	private String newsTitle;
	private String newsContent;
	private String newsData;
	private String author;
	private Integer catelogId;
	private NewCatelory newCate;
	
	
	public Integer getCatelogId() {
		return catelogId;
	}
	public void setCatelogId(Integer catelogId) {
		this.catelogId = catelogId;
	}
	public Integer getNewsId() {
		return newsId;
	}
	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public String getNewsContent() {
		return newsContent;
	}
	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}
	public String getNewsData() {
		return newsData;
	}
	public void setNewsData(String newsData) {
		this.newsData = newsData;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public NewCatelory getNewCate() {
		return newCate;
	}
	public void setNewCate(NewCatelory newCate) {
		this.newCate = newCate;
	}
	@Override
	public String toString() {
		return "News [newsId=" + newsId + ", newsTitle=" + newsTitle + ", newsContent=" + newsContent + ", newsData="
				+ newsData + ", author=" + author + ", catelogId=" + catelogId + ", newCate=" + newCate + "]";
	}

	
}
