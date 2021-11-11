package org.zerock.service;

import java.util.List;

import org.zerock.domain.AttachImageVO;

public interface AttachService {
	
	/* 이미지 데이터 반환 */
	public List<AttachImageVO> getAttachList(int gdsNum);
}