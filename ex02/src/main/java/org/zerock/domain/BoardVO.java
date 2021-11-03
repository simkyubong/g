package org.zerock.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class BoardVO {
	// �Խ��ǹ�ȣ
	private int bno;
	// ����
	private String title;
	// ����
	private String content;
	// �ۼ���
	private String writer;
	// �ۼ�����
	private Date regdate;
	// ��������
	private Date updateDate;
	// 댓글 수
	private int replycnt;
	
	private List<BoardAttachVO> attachList;
	
	
	
}
