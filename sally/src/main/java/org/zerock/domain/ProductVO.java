package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ProductVO {
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
	private int views;
}
