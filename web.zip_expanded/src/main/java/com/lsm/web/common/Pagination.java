package com.lsm.web.common;

public class Pagination {

	int maxPost;			// 페이지당 표시될 게시물 최대 갯수 및 현재 게시물 갯수
	int firstPageNo;		// 첫번째 페이지 번호
	int prevPageNo;			// 이전 페이지 번호
	int startPageNo;		// 시작 페이지
	int currentPageNo;		// 현재 페이지 번호
	int endPageNo;			// 끝 페이지
	int nextPageNo;			// 다음 페이지 번호
	int finalPageNo;		// 마지막 페이지 번호
	int numberOfRecords;	// 전체 게시글 수
	int sizeOfPage;			// 페이지 그룹 수
	
	public Pagination(int currentPageNo, int maxPost) {
		this.currentPageNo = currentPageNo;
		this.sizeOfPage = 5;
		this.maxPost = (maxPost != 0) ? maxPost : 10; // 게시물 최대 갯수가 0개가 아니면 현재 게시물 갯수(maxPost)이고, 게시물 갯수가 0개라면 10개 표시
	}
	
	public int getMaxPost() {
		return maxPost;
	}
	public void setMaxPost(int maxPost) {
		this.maxPost = maxPost;
	}
	public int getFirstPageNo() {
		return firstPageNo;
	}
	public void setFirstPageNo(int firstPageNo) {
		this.firstPageNo = firstPageNo;
	}
	public int getPrevPageNo() {
		return prevPageNo;
	}
	public void setPrevPageNo(int prevPageNo) {
		this.prevPageNo = prevPageNo;
	}
	public int getStartPageNo() {
		return startPageNo;
	}
	public void setStartPageNo(int startPageNo) {
		this.startPageNo = startPageNo;
	}
	public int getCurrentPageNo() {
		return currentPageNo;
	}
	public void setCurrentPageNo(int currentPageNo) {
		this.currentPageNo = currentPageNo;
	}
	public int getEndPageNo() {
		return endPageNo;
	}
	public void setEndPageNo(int endPageNo) {
		this.endPageNo = endPageNo;
	}
	public int getNextPageNo() {
		return nextPageNo;
	}
	public void setNextPageNo(int nextPageNo) {
		this.nextPageNo = nextPageNo;
	}
	public int getFinalPageNo() {
		return finalPageNo;
	}
	public void setFinalPageNo(int finalPageNo) {
		this.finalPageNo = finalPageNo;
	}
	public int getNumberOfRecords() {
		return numberOfRecords;
	}
	public void setNumberOfRecords(int numberOfRecords) {
		this.numberOfRecords = numberOfRecords;
	}
	public int getSizeOfPage() {
		return sizeOfPage;
	}
	public void setSizeOfPage(int sizeOfPage) {
		this.sizeOfPage = sizeOfPage;
	}
	
	public void makePaging() {
		if(numberOfRecords == 0)
			return;
		if(currentPageNo == 0)
			setCurrentPageNo(1);
		if(maxPost == 0)
			setMaxPost(10);
		int finalPage = (numberOfRecords + (maxPost - 1)) / maxPost;
		
		if(currentPageNo > finalPage)
			setCurrentPageNo(finalPage);
	}
	
}
