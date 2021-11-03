package org.zerock.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	// 메인페이지 	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "index2";
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
	
	@RequestMapping(value = "/header", method = RequestMethod.GET)
	public String header() {
		return "header";
		}
	
	@RequestMapping(value = "/footer", method = RequestMethod.GET)
	public String footer() {
		return "footer";
		}
	

	
}
