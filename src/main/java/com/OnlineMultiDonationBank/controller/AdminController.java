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

import com.OnlineMultiDonationBank.entity.AdminDetails;
import com.OnlineMultiDonationBank.entity.DonationDetails;
import com.OnlineMultiDonationBank.entity.NgoDetails;
import com.OnlineMultiDonationBank.entity.QueryDetails;
import com.OnlineMultiDonationBank.services.AdminService;
import com.OnlineMultiDonationBank.services.HomeService;

@Controller
public class AdminController {

	@Autowired
	public AdminService as;

	@Autowired
	public HomeService hs;
	
	@RequestMapping("/adminlogin")
	public String login() {
		return "adminlogin";
	}

	@RequestMapping("/adminindex")
	public String adminhome(HttpServletRequest request) {
		request.setAttribute("mode", "mode_home");
		return "adminindex";
	}

	@RequestMapping("/registerngo")
	public String adminNgoris(HttpServletRequest request) {
		request.setAttribute("mode", "mode_registerngo");
		return "adminindex";
	}

	@RequestMapping(value = "/alogin", method = RequestMethod.POST)
	public String loginAuth(@ModelAttribute AdminDetails ad, HttpServletRequest request) {

		if (as.findByAdminidAndPassword(ad.getAdminId(), ad.getPassword()) != null) {
			request.setAttribute("mode", "mode_home");
			request.getSession().setAttribute("auserid", ad.getAdminId());
			return "adminindex";
		} else {
			request.setAttribute("error", "Inavalid Username Or Passowrd");
			return "adminlogin";
		}
	}

	@RequestMapping(value = "/adminlogout")
	public String dlogout(HttpServletRequest request) {
		request.getSession().removeAttribute("auserid");
		request.setAttribute("logout", "true");
		return "index";
	}

	@RequestMapping(value = "/ngoregis", method = RequestMethod.POST)
	public String regngo(@ModelAttribute NgoDetails nd, HttpServletRequest request) {
		as.registerNgo(nd);
		request.setAttribute("mode", "mode_registerngo");
		return "adminindex";
	}

	@RequestMapping("/viewngo")
	public ModelAndView getAllngo(HttpServletRequest request) {
		request.setAttribute("mode", "mode_viewngo");
		ModelAndView mav = new ModelAndView("adminindex");
		List<NgoDetails> listngo = as.getAllNgoDetails();
		mav.addObject("listngo", listngo);
		return mav;
	}

	@RequestMapping("/deletengo")
	public ModelAndView removeNgo(@RequestParam String ngoid, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("adminindex");
		as.deletengo(ngoid);
		request.setAttribute("mode", "mode_home");
		return mav;
	}

	@RequestMapping("/editngo")
	public ModelAndView editNgo(@RequestParam String ngoid, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("adminindex");
		NgoDetails ndetail = as.editNgoo(ngoid);
		if (ndetail == null) {
			request.setAttribute("mode", "mode_home");
			request.setAttribute("adminmsg", " Error Ngo not found");
			return mav;
		} else {
			request.setAttribute("mode", "mode_editngo");
			mav.addObject("nlist", ndetail);
			return mav;
		}
	}

	@RequestMapping("/viewalldonation")
	public ModelAndView fetchAllDonations(HttpServletRequest request) {
		request.setAttribute("mode", "mode_viewdonations");
		ModelAndView mav = new ModelAndView("adminindex");
		List<DonationDetails> listdonations = as.getAllDonations();
		mav.addObject("listdonations",listdonations);
		return mav;
	}
	
	@RequestMapping("/viewqueries")
	public ModelAndView fetchAllQueries(HttpServletRequest request) {
		request.setAttribute("mode", "mode_viewqueries");
		ModelAndView mav = new ModelAndView("adminindex");
		List<QueryDetails> qlist = hs.getAllQueries();
		mav.addObject("qlist",qlist);
		return mav;
	}
}
