package org.zerock.controller;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.SampleVO;
import org.zerock.domain.Ticket;

import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("rest")
@Log4j
public class RestTestController {
	@GetMapping(value="getText",produces="text/plain; charset=UTF-8")
	public String setText() {
		log.info("MIME TYPE : "+MediaType.TEXT_PLAIN_VALUE);
		return "안녕하세요.";
	}
	@GetMapping(value="getSample",produces= {MediaType.APPLICATION_JSON_UTF8_VALUE,
											 MediaType.APPLICATION_XML_VALUE})
	public SampleVO getSample() {
		
		return new SampleVO(112,"스타","로드");	// return SampleVO new SampleVO(112,"스타","로드");
	}
	// ArrayList를 반환
	@GetMapping(value="getList")
	public List<SampleVO> getList(){
		
		return IntStream.range(1,10).mapToObj(i -> new SampleVO(i,i+"First",i+" Last")).collect(Collectors.toList());
	}
	// ResponseEntity 반환
	@GetMapping(value="/check",params= {"height","weight"})
	public ResponseEntity<SampleVO> check(double height, double weight){
		SampleVO vo = new SampleVO(0,""+height,""+weight);
		
		ResponseEntity<SampleVO> result = null;
		
		if(height<150) {
			result=ResponseEntity.status(HttpStatus.BAD_GATEWAY).body(vo);
		}else {
			result=ResponseEntity.status(HttpStatus.OK).body(vo);
		}
		return result;
	}
	// Rest방식에서 select작업시 @GetMapping
	@GetMapping("/product/{cat}/{pid}")
	public String[] getPath(@PathVariable("cat") String cat,@PathVariable("pid") String pid) {
		return new String[] {"category : "+cat,"productid : "+pid};
	}
	// Rest방식에서 insert작업시 @PostMapping
	@PostMapping("/ticket")
	public Ticket convert(@RequestBody Ticket ticket) {
		log.info("convert........ticket"+ticket);
		return ticket;
	}
	// Rest방식에서 update작업시 @PutMapping
	@PutMapping("/ticket1")
	public Ticket convert1(@RequestBody Ticket ticket) {
		log.info("convert........ticket"+ticket);
		return ticket;
	}
	// Rest방식에서 delete작업시 @DeleteMapping
	@DeleteMapping("/ticket2")
	public Ticket convert2(@RequestBody Ticket ticket) {
		log.info("convert........ticket"+ticket);
		return ticket;
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
