package com.pcwk.ehr.cmn;

public class DTO {
	private int no;			// 번호
	private int pageSize;	// 페이지 사이즈
	private int pageno;	// 페이지 번호
	
	private int searchDiv;//검색 구분 : 전체("")
	private String searchWord;//검색어
	
	private int totalCnt;//총건수
	
	public DTO() {}

	public int getTotalCnt() {
		return totalCnt;
	}


	public void setTotalCnt(int totalCnt) {
		this.totalCnt = totalCnt;
	}


	public int getSearchDiv() {
		return searchDiv;
	}

	public void setSearchDiv(int searchDiv) {
		this.searchDiv = searchDiv;
	}

	public String getSearchWord() {
		return searchWord;
	}

	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageno() {
		return pageno;
	}

	public void setPageno(int pageno) {
		this.pageno = pageno;
	}

	@Override
	public String toString() {
		return "DTO [no=" + no + ", pageSize=" + pageSize + ", pageno=" + pageno + ", searchDiv=" + searchDiv
				+ ", searchWord=" + searchWord + ", totalCnt=" + totalCnt + "]";
	}
	
	
	
}