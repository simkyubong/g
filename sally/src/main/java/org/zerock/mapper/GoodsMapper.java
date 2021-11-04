package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.CateVO;
import org.zerock.domain.GoodsVO;

public interface GoodsMapper {
	public List<CateVO> category();
	
	public List<GoodsVO> list();
	
}
