package com.pcwk.ehr.board.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.UUID;

import com.pcwk.ehr.cmn.StringUtil;
import com.pcwk.ehr.cmn.pcwLog;

public class BoardDaoMain implements pcwLog {
	private BoardDTO board01;
	private BoardDao dao;
	
	
	
	public BoardDaoMain() {
		board01 = new BoardDTO("20230510741b3465e92e401f8b6ad06383f7e50c", "제목_3", "내용_3", 0, "admin3", "admin3");
		dao = new BoardDao();
	}
	
	//단건조회
	public void doSelectOne() {
		BoardDTO outVO = dao.doSelectOne(board01);
		if(null != outVO) {
			LOG.debug("*조회 성공!");
		}else {
			LOG.debug("*조회 실패!");
		}
		int flag = dao.doReadCnt(board01);
		LOG.debug("flag:"+flag);
		
	}
	
	public void doDelete() {
		int flag = dao.doDelete(board01);
		
		LOG.debug("flag : "+flag);
		
	}
	
	public void doUpdate() {
		//테스트가 매번 동일하게 수행!
		
		//1.기존데이터 삭제
		//2.데이터 1건 입력
		//3.데이터 1건 조회
		//4.조회 데이터와 입력 데이터 비교:신규
		//5.조회된 데이터 수정.
		//6.수정된(5)으로 수정 메서드 호출
		//7.데이터 1건 조회
		//8.조회 데이터와 입력 데이터 비교:신규
		
		
		//1.
		dao.doDelete(board01);
		
		//2.
		int flag = dao.doSave(board01);
		
		//3.
		BoardDTO outVO = dao.doSelectOne(board01);
		
		//4.
		if(isSameData(outVO, board01)) {
				LOG.debug("========================");
				LOG.debug("등록 성공!");
				LOG.debug("========================");
		
		}else {
			LOG.debug("=============================");
			LOG.debug("등록 실패");
			LOG.debug("=============================");
		}
		
		//5.
		outVO.setTitle(outVO.getTitle()+"U");
		outVO.setContents(outVO.getContents()+"U");
		outVO.setModId(outVO.getModId()+"U");
		
		//6.
		flag = dao.doUpdate(outVO);
		
		LOG.debug("---------------------------");
		LOG.debug("flag:"+flag);
		LOG.debug("---------------------------");
		
		//7.
		BoardDTO upVO= dao.doSelectOne(outVO);
		if(isSameData(upVO, outVO)==true) {
			LOG.debug("---------------------------");
			LOG.debug("수정 성공!");
			LOG.debug("---------------------------");
		}else {
			LOG.debug("---------------------------");
			LOG.debug("수정 실패!");
			LOG.debug("---------------------------");
		}
		
	}
	
	public boolean isSameData(BoardDTO outVO, BoardDTO board01) {
		boolean isSame = false;
		
		if(outVO.getSeq().equals(board01.getSeq())==false) {
			LOG.debug("seq");
			return false;
			
		}
		if(outVO.getTitle().equals(board01.getTitle()) == false) {
			LOG.debug("title");
			return false;
		}
		if(outVO.getContents().equals(board01.getContents()) == false) {
			LOG.debug("contents");
			return false;
		}		
		if(outVO.getReadCnt() != board01.getReadCnt()) {
			LOG.debug("readcnt");
			return false;
		}
		if(outVO.getRegId().equals(board01.getRegId()) == false) {
			LOG.debug("regid");
			return false;
		}
		
		if(outVO.getModId().equals(board01.getModId()) == false) {
			LOG.debug("modid");
			return false;
		}
		
		
		isSame = true;
		
		
//		if(outVO.getSeq() == board01.getSeq() 
//				&& outVO.getTitle().equals(board01.getTitle())
//				&& outVO.getContents().equals(board01.getContents())
//				&& outVO.getReadCnt()==board01.getReadCnt()	
//				&& outVO.getRegId().equals(board01.getRegId())
//				&& outVO.getModId().equals(board01.getModId())
//						) {
//				isSame = true;
//				}
		
		return isSame;

	}
	
	
	public void doSave() {
		int flag = dao.doSave(board01);
		if(1==flag) {
			LOG.debug("등록 성공!");	
		}else {
			LOG.debug("등록 실패!");
		}
	}
	
	public void doRetrieve() {
		board01.setPageSize(10);
		board01.setPageno(1);
		
		
		//검색구분, 검색어
		board01.setSearchDiv(5);
		board01.setSearchWord("오늘");
		
		ArrayList<BoardDTO> list = dao.doRetrieve(board01);
		
		
		for (BoardDTO vo:list) {
			LOG.debug(vo);
		}
		int totalCnt = dao.doTotalCount(board01);
		LOG.debug("totalCnt:"+totalCnt);
	}
	
	public void doReadCnt() {
		//1.기존데이터 삭제
		//2.데이터 1건 입력
		//3.1. 조회 count
		//3.2. 데이터 1건 조회
		//4. 조회 데이터와 입력 데이터 비교:신규
		
		//1.
		dao.doDelete(board01);
		
		//2.
		int flag = dao.doSave(board01);
		LOG.debug("flag:"+flag);
		
		//3.1
		flag = dao.doReadCnt(board01);
		
		//3.2
		BoardDTO outVO = dao.doSelectOne(board01);
		
		//4.
		if(outVO.getReadCnt() ==1) {
			LOG.debug("---------------------");
			LOG.debug("-조회count성공-");
			LOG.debug("---------------------");
		}else {
			LOG.debug("---------------------");
			LOG.debug("-조회count실패-");
			LOG.debug("---------------------");
		}
		
		
		
	}
	//yyyy-MM-dd HH:mm:ss
	
	public void getYearMonthDay() {
		String date = "";
		
		LocalDateTime currentDateTime = LocalDateTime.now();
		LOG.debug("currentDateTime"+currentDateTime.toString());
		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
		date = currentDateTime.format(formatter);
		LOG.debug("date:"+date);
		LOG.debug("date length():"+date.length()); //8
		
		
	}
	
	//pk생성
	// UUID(universally Unique Identifier)
	public void pkNotNullUnique(){
		String pk = "";
		
		UUID uuid = UUID.randomUUID();
		
		// uuid:ed6ff31f-efdc-4a01-9259-1bd154c76411
		// uuid length:36
		
		LOG.debug("uuid:"+uuid);
		pk = uuid.toString();
		pk  = pk.replace("-","");
		LOG.debug("pk:"+pk);
		LOG.debug("uuid length():"+pk.length());
		
		
		
	}
	
	
	public static void main(String[] args) {
		
		BoardDaoMain main = new BoardDaoMain();
		
		//단건등록
		//main.doSave();
		
		
		//단건조회
		//main.doSelectOne();
		
		//삭제
		//main.doDelete();
		main.doUpdate();
		
		//목록조회
		//main.doRetrieve();
		
		//조회건수 증가
		//main.doReadCnt();
		
		//UUID
		//main.pkNotNullUnique();
		
		
		//main.getYearMonthDay();
		//System.out.println("getPK:"+StringUtil.getPK());
		
	}
	
}