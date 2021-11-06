package org.zerock.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

/**
 * Handles requests for the application home page.
 */
@Controller
@Log4j
public class HomeController {
	// 메인페이지 	
	@RequestMapping(value = "/sally", method = RequestMethod.GET)
	public String home() {
		return "sally";
	}
	
	@RequestMapping(value = "/index3", method = RequestMethod.GET)
	public String index3() {
		return "index3";
		}
	
	@RequestMapping(value = "/index4", method = RequestMethod.GET)
	public String index4() {
		return "index4";
		}
	
	@RequestMapping(value = "/index5", method = RequestMethod.GET)
	public String index5() {
		return "index5";
		}
	
	@RequestMapping(value = "/main_header", method = RequestMethod.GET)
	public String header() {
		return "main_header";
		}
	
	@RequestMapping(value = "/main_footer", method = RequestMethod.GET)
	public String footer() {
		return "main_footer";
		}
	@RequestMapping(value = "/sug_store", method = RequestMethod.GET)
	public String sug_store() {
		return "sug_store";
		}
	
	@RequestMapping(value = "/sug_item", method = RequestMethod.GET)
	public String sug_item() {
		return "sug_item";
		}
	

	
}