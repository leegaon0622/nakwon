package com.nakwon.domain;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageMakerIntro {
	
  private int totalCount; //총 리스트 수
  private int startPage; //게시글 시작 페이지(페이지마다 다름)
  private int endPage; //게시글 끝 페이지(페이지마다 다름)
  private boolean prev; //이전
  private boolean next; //다음
  
  private int displayPageNum = 5; //한 페이지에 출력될 리스트 개수
  private CriteriaIntro criIntro; //현재 페이지, 한 페이지에 출력될 리스트 개수를 담은 class

  public void setCriIntro(CriteriaIntro criIntro) {
    this.criIntro = criIntro;
  }

  public void setTotalCount(int totalCount) {
    this.totalCount = totalCount;

    calcData();
  }

  private void calcData() {

    endPage = (int) (Math.ceil(criIntro.getPage() / (double) displayPageNum) * displayPageNum);

    startPage = (endPage - displayPageNum) + 1;

    int tempEndPage = (int) (Math.ceil(totalCount / (double) criIntro.getPerPageNum()));

    if (endPage > tempEndPage) {
      endPage = tempEndPage;
    }

    prev = startPage == 1 ? false : true; //시작 페이지가 1이면 false

    next = endPage * criIntro.getPerPageNum() >= totalCount ? false : true;

  }

  public int getTotalCount() {
    return totalCount;
  }

  public int getStartPage() {
    return startPage;
  }

  public int getEndPage() {
    return endPage;
  }

  public boolean isPrev() {
    return prev;
  }

  public boolean isNext() {
    return next;
  }

  public int getDisplayPageNum() {
    return displayPageNum;
  }

  public CriteriaIntro getCriIntro() {
    return criIntro;
  }

  public String makeQuery(int page) {

    UriComponents uriComponents = UriComponentsBuilder.newInstance().queryParam("page", page)
        .queryParam("perPageNum", criIntro.getPerPageNum()).build();

    return uriComponents.toUriString();
  }


}

