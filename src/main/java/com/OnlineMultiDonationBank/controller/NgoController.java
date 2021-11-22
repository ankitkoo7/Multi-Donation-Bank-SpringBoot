package com.OnlineMultiDonationBank.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.OnlineMultiDonationBank.entity.DonationDetails;
import com.OnlineMultiDonationBank.entity.DonorDetails;
import com.OnlineMultiDonationBank.entity.NgoDetails;
import com.OnlineMultiDonationBank.entity.QueryDetails;
import com.OnlineMultiDonationBank.services.HomeService;
import com.OnlineMultiDonationBank.services.NgoService;

@Controller
public class NgoController {

	@Autowired
	public NgoService ns;
	
	@Autowired
	public HomeService hs;
	
	@RequestMapping("/ngologin")
	public String login() {
		return "ngologin";
	}
	@RequestMapping("/ngoindex")
	public String ngoHome(HttpServletRequest request) {
		request.setAttribute("nmode", "mode_home");
		request.removeAttribute("send");
		return "ngoindex";
	}
	@RequestMapping("/nlogin")
	public String ngoAuth(@ModelAttribute NgoDetails nd, HttpServletRequest request) {
		
		if(ns.findByNgoidAndPassowrd(nd.getNgoid(), nd.getPassword())!=null)
		{
			request.getSession().setAttribute("ngoid", nd.getNgoid());
			NgoDetails nname = ns.getOrgname(nd.getNgoid());
			request.setAttribute("nname", nname.getOrgname());
			request.setAttribute("nmode", "mode_home");
			return "ngoindex";
		}
		else {
			request.setAttribute("error", "Inavalid Username Or Passowrd");
			return "ngologin";
		}
	}
	
	@RequestMapping("/showdonationrecive")
	public ModelAndView getDonations(@RequestParam String ngoname, HttpServletRequest request) {
		request.setAttribute("nmode", "mode_viewdonation");
		ModelAndView mav = new ModelAndView("ngoindex");
		List<DonationDetails> dlist = ns.getDonationsByNgo(ngoname);
		mav.addObject("dlist",dlist);
		return mav;
	}
	
	@RequestMapping("/showdonordetails")
	public ModelAndView getDonorDetails( HttpServletRequest request){
		request.setAttribute("nmode", "mode_viewdonor");
		ModelAndView mav = new ModelAndView("ngoindex");
		List<DonorDetails> ddlist =  ns.getDonorDetails();
		mav.addObject("ddlist",ddlist);
		return mav;
	}
	
	@RequestMapping("/contactngo")
	public String contactDonor(HttpServletRequest request) { 
		request.setAttribute("nmode", "mode_contactus");
		return "ngoindex";
	}
	
	@RequestMapping(value="/contactngoform", method = RequestMethod.POST)
	public String saveGenQuery(@ModelAttribute QueryDetails  qd, HttpServletRequest request) {
		hs.saveGeneralQuery(qd);
		request.setAttribute("send", "true");
		request.setAttribute("nmode", "mode_home");
		return "ngoindex";
	}
}
