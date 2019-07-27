package com.ta.dsg;

import java.util.Locale;  
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ta.dsg.common.UriMap;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/*")
public class HomeController extends UriMap{
	
	//home 페이지
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String Main() {
		return URI_DEFAULT_MAIN;
	}
	
	//sale 페이지
	@RequestMapping(value = "/Sale", method = RequestMethod.GET)
	public String Sale() {
		return URI_DEFAULT_SALE;
	}
	
	//About 페이지
	@RequestMapping(value = "/About", method = RequestMethod.GET)
	public String About() {
		return URI_DEFAULT_ABOUT;
	}
	
	//Contact 페이지
	@RequestMapping(value = "/Contact", method = RequestMethod.GET)
	public String Contact() {
		return URI_DEFAULT_CONTACT;
	}
	
}
