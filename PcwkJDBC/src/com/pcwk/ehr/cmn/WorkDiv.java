package com.pcwk.ehr.cmn;

import java.util.ArrayList;

import com.pcwk.ehr.cmn.DTO;
import com.pcwk.ehr.cmn.pcwLog;

public interface WorkDiv<T> extends pcwLog {

	/**
	 * 목록 조회
	 * @param param
	 * @return ArrayList<T>
	 */
	ArrayList<T>  doRetrieve(DTO search);
	
	/**
	 * 저장
	 * @param param
	 * @return int
	 */
	int doSave(T param);
	
	/**
	 * 수정
	 * @param param
	 * @return int
	 */
	int doUpdate(T param);
	
	/**
	 * 삭제
	 * @param param
	 * @return int
	 */
	int doDelete(T param);
	
	/**
	 * 단건조회
	 * @param param
	 * @return T
	 */
	T doSelectOne(T param);
}
