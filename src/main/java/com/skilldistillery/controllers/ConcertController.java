package com.skilldistillery.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.data.Concert;
import com.skilldistillery.data.ConcertDAO;

@Controller
@SessionAttributes({"concertList", "concert"})
public class ConcertController {

	@Autowired
	private ConcertDAO dao;

	@ModelAttribute("userConcertList")
	public List<Concert> initSessionObject(){
		List<Concert> userConcertList = new ArrayList<>();
		return userConcertList;
	}
	
	@RequestMapping(path="GetConcertData.do", params="performer")
	public ModelAndView getByPerformer(@RequestParam("performer") String performer, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		Concert c = new Concert();
		c = dao.getConcertByPerformer(performer);
		mv.addObject("concert", c);
		if (c != null) {
			session.setAttribute("concert", c);
			Concert savedconcert = (Concert)session.getAttribute("concert");
			System.out.println("Saved: " + savedconcert);
		}
		mv.setViewName("result.jsp");
		return mv;
	}

	@ModelAttribute("userConcertList")
	@RequestMapping(path = "GetConcertData.do")
	public ModelAndView addEvent(@RequestParam("performer") String performer, 
			@RequestParam("venue") String venue,
			@RequestParam("date") String date, 
			@ModelAttribute("userConcertList") List<Concert> userConcertList,
			HttpSession session) {
		Concert c = null;
		ModelAndView mv = new ModelAndView();
		c = new Concert(performer, venue, date);
		userConcertList.add(c);
		return mv;
	}
	
	@ModelAttribute("userConcertList")
	@RequestMapping(path = "GetConcertData.do", params = "addThisEvent")
	public ModelAndView addCurrentConcert(@ModelAttribute("userConcertList") List<Concert> userConcertList,
										HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("result.jsp");
		Concert c = (Concert)(session.getAttribute("concert"));
		System.out.println("Adding current concert: "+ c);
		userConcertList.add(c);
		if (userConcertList != null) {
			for (Concert concert : userConcertList) {
				System.out.println("User concert list: "+concert);
			}
		}
		mv.addObject(c);
		return mv;
	}
	
	@RequestMapping(path = "GetConcertData.do", params = "showAll")
	public ModelAndView showUserConcerts(@ModelAttribute("userConcertList") List<Concert> userConcertList) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("result.jsp");
		mv.addObject("userConcerts", userConcertList);
		return mv;
	}

}