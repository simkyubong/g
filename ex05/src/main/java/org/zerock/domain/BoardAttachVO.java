package org.zerock.domain;

import lombok.Data;

@Data
public class BoardAttachVO {
	private String uuid;
    private String uploadpath;
    private String filename;
    private String filetype;
    private int bno;
}