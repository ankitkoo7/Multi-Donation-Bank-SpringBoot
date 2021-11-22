package com.OnlineMultiDonationBank.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.OnlineMultiDonationBank.entity.QueryDetails;
import com.OnlineMultiDonationBank.services.HomeService;

@Controller
public class HomeController {

	@Autowired
	public HomeService hs;
	
	@RequestMapping("/index")
	public String home(HttpServletRequest request) {
		request.removeAttribute("send");
		return "index";
	}
	
	@RequestMapping("/cases")
	public String cases() {
		return "cases";
	}
	
	@RequestMapping("/contactus")
	public String element() {
		return "contactus";
	}
	
	@RequestMapping(value="/contactgenform", method = RequestMethod.POST)
	public String saveGenQuery(@ModelAttribute QueryDetails  qd, HttpServletRequest request) {
		hs.saveGeneralQuery(qd);
		request.setAttribute("send", "true");
		return "contactus";
	}
}
