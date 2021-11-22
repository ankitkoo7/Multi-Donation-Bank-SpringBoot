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
import com.OnlineMultiDonationBank.entity.BookDonation;
import com.OnlineMultiDonationBank.entity.ClothesDonation;
import com.OnlineMultiDonationBank.entity.DonationDetails;
import com.OnlineMultiDonationBank.entity.DonorDetails;
import com.OnlineMultiDonationBank.entity.FoodDonation;
import com.OnlineMultiDonationBank.entity.MedicineDonation;
import com.OnlineMultiDonationBank.entity.MoneyDonation;
import com.OnlineMultiDonationBank.entity.NgoDetails;
import com.OnlineMultiDonationBank.entity.QueryDetails;
import com.OnlineMultiDonationBank.services.DonorServices;
import com.OnlineMultiDonationBank.services.HomeService;

@Controller
public class DonorController {

	@Autowired
	public DonorServices ds;
	
	@Autowired
	public HomeService hs;

	@RequestMapping("/donorlogin")
	public String donorLogin() {
		return "donorlogin";
	}

	@RequestMapping("/donorindex")
	public String donorHome(HttpServletRequest request) {
		request.setAttribute("dmode", "mode_home");
		request.removeAttribute("submit");
		return "donorindex";
	}

	@RequestMapping("/donorregistration")
	public String donorReg() {
		return "donorregistration";
	}

	@RequestMapping(value = "/donorregis", method = RequestMethod.POST)
	public String registerDonor(@ModelAttribute DonorDetails dd) {
		ds.saveDonor(dd);
		return "donorlogin";
	}

	@RequestMapping(value = "/dlogin", method = RequestMethod.POST)
	public String loginAuth(@ModelAttribute DonorDetails dd, HttpServletRequest request) {

		if (ds.findByAdonoridAndCpassword(dd.getAdonorid(), dd.getCpassword()) != null) {
			request.getSession().setAttribute("donorname", dd.getAdonorid());
			request.setAttribute("dmode", "mode_home");
			return "donorindex";
		} else {
			request.setAttribute("error", "Invalid UserID or Password");
			return "donorlogin";
		}
	}

	@RequestMapping(value = "/donorlogout")
	public String dlogout(HttpServletRequest request) {
		request.getSession().removeAttribute("donorname");
		request.setAttribute("logout", "true");
		return "index";
	}

	@RequestMapping("/viewdonor")
	public ModelAndView getAllDonor(HttpServletRequest request) {
		request.setAttribute("mode", "mode_viewdonor");
		ModelAndView mav = new ModelAndView("adminindex");
		List<DonorDetails> listdonor = ds.getDonors();
		mav.addObject("listdonor", listdonor);
		return mav;
	}

	@RequestMapping("/deletedonor")
	public String removeDonor(@RequestParam String adonorid, HttpServletRequest request) {
		ds.deleteDonor(adonorid);
		request.setAttribute("mode", "mode_adminindex");
		return "adminindex";
	}

	@RequestMapping("/fooddonation")
	public ModelAndView foodDonation(HttpServletRequest request) {
		request.setAttribute("dmode", "mode_fooddonation");
		ModelAndView mav = new ModelAndView("donorindex");
		List<NgoDetails> listngo = ds.getAllNgoName();
		mav.addObject("listngo", listngo);
		return mav;
	}

	@RequestMapping(value = "/fooddform", method = RequestMethod.POST)
	public String foodDform(@ModelAttribute FoodDonation fd, HttpServletRequest request, @ModelAttribute DonationDetails dd) {
		ds.saveFoodDonation(fd);
		ds.saveDonationDetail(dd);
		request.setAttribute("submit", "true");
		request.setAttribute("dmode", "mode_home");
		return "donorindex";
	}

	@RequestMapping("/medicinedonation")
	public ModelAndView medicinedonation(HttpServletRequest request) {
		request.setAttribute("dmode", "mode_medidonation");
		ModelAndView mav = new ModelAndView("donorindex");
		List<NgoDetails> listngo = ds.getAllNgoName();
		mav.addObject("listngo", listngo);
		return mav;
	}
	
	@RequestMapping( value = "/meddform", method = RequestMethod.POST)
	public String meDdForm(@ModelAttribute MedicineDonation md, HttpServletRequest request, @ModelAttribute DonationDetails dd) {
		ds.saveMedicineDonation(md);
		ds.saveDonationDetail(dd);
		request.setAttribute("submit", "true");
		request.setAttribute("dmode", "mode_home");
		return "donorindex";
	}
	
	@RequestMapping("/bookdonation")
	public ModelAndView bookDonation(HttpServletRequest request) {
		request.setAttribute("dmode", "mode_bookdonation");
		ModelAndView mav  = new ModelAndView("donorindex");
		List<NgoDetails> listngo = ds.getAllNgoName();
		mav.addObject("listngo",listngo);
		return mav;
	}
	
	@RequestMapping(value="/bookdform", method = RequestMethod.POST)
	public String bookdForm(@ModelAttribute BookDonation bd, HttpServletRequest request, @ModelAttribute DonationDetails dd) {
		ds.saveBookDonation(bd);
		ds.saveDonationDetail(dd);
		request.setAttribute("submit", "true");
		request.setAttribute("dmode", "mode_home");
		return "donorindex";
	}
	
	@RequestMapping("/clothesdonation")
	public ModelAndView clothesDonation(HttpServletRequest request) {
		request.setAttribute("dmode", "mode_clothesdonation");
		ModelAndView mav = new ModelAndView("donorindex");
		List<NgoDetails> listngo = ds.getAllNgoName();
		mav.addObject("listngo",listngo);
		return mav;
	}
	
	@RequestMapping(value="/clothesdform", method = RequestMethod.POST)
	public String clothesdForm(@ModelAttribute ClothesDonation cd, HttpServletRequest request, @ModelAttribute DonationDetails dd) {
		ds.saveClothesDonation(cd);
		ds.saveDonationDetail(dd);
		request.setAttribute("submit", "true");
		request.setAttribute("dmode", "mode_home");
		return "donorindex";
	}
	
	@RequestMapping("/moneydonation")
	public ModelAndView moneyDonation(HttpServletRequest request) {
		request.setAttribute("dmode", "mode_moneydonation");
		ModelAndView mav = new ModelAndView("donorindex");
		List<NgoDetails> listngo = ds.getAllNgoName();
		mav.addObject("listngo",listngo);
		return mav;
	}
	
	@RequestMapping(value="/moneydform", method = RequestMethod.POST)
	public String moneydForm(@ModelAttribute MoneyDonation md, HttpServletRequest request, @ModelAttribute DonationDetails dd) {
		ds.saveMoneyDonation(md);
		ds.saveDonationDetail(dd);
		request.setAttribute("submit", "true");
		request.setAttribute("dmode", "mode_home");
		return "donorindex";
	}
	
	@RequestMapping("/showdonation")
	public ModelAndView showDonations(HttpServletRequest request, @RequestParam String dname) {
		request.setAttribute("dmode", "mode_viewdonations");
		ModelAndView mav =  new ModelAndView("donorindex");
		List<DonationDetails> listdonation = ds.getDonationByDonor(dname);
		mav.addObject("listdnt",listdonation);
		return mav;
	}
	
	@RequestMapping("/contactdonor")
	public String contactDonor(HttpServletRequest request) { 
		request.setAttribute("dmode", "mode_contactus");
		return "donorindex";
	}
	
	@RequestMapping(value="/contactdonorform", method = RequestMethod.POST)
	public String saveGenQuery(@ModelAttribute QueryDetails  qd, HttpServletRequest request) {
		hs.saveGeneralQuery(qd);
		request.setAttribute("send", "true");
		request.setAttribute("dmode", "mode_home");
		return "donorindex";
	}
}
