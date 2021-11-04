package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.Criteria;
import org.zerock.domain.ProductVO;
import org.zerock.mapper.ProductMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ProductServiceImpl implements ProductService {
	private ProductMapper mapper;
	
	@Override
	public ProductVO get(long bno) {
		log.info("get....."+bno);
		return mapper.read(bno);
	}
	@Override
	public List<ProductVO> getList(Criteria cri) {
		log.info("getList........");
		return mapper.getListWithPaging(cri);
	}
	@Override
	public int getTotalCount(Criteria cri) {
		return mapper.getTotalCount(cri);
	}
	@Override
	public Iterable<ProductVO> getList() {
		// TODO Auto-generated method stub
		return null;
	}
}
