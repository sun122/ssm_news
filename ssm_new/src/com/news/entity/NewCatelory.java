package com.news.entity;

import org.springframework.stereotype.Component;

@Component
public class NewCatelory {
	private Integer cateId;
	private String cateNmae;
	private String cateDiscrible;

	public Integer getCateId() {
		return cateId;
	}
	public void setCateId(Integer cateId) {
		this.cateId = cateId;
	}
	public String getCateNmae() {
		return cateNmae;
	}
	public void setCateNmae(String cateNmae) {
		this.cateNmae = cateNmae;
	}
	public String getCateDiscrible() {
		return cateDiscrible;
	}
	public void setCateDiscrible(String cateDiscrible) {
		this.cateDiscrible = cateDiscrible;
	}
	@Override
	public String toString() {
		return "NewCatelory [cateId=" + cateId + ", cateNmae=" + cateNmae + ", cateDiscrible=" + cateDiscrible + "]";
	}
	
}
