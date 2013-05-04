package com.springapp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.domain.User;

public class UserController extends MultiActionController {

	public ModelAndView login(HttpServletRequest request,
			HttpServletResponse response,User user) {
		user.setName("sanjoy");
		String userStr = "san";
		try {
			userStr = request.getParameter("name");
			if(userStr == null)
				userStr = "san";
		} catch (Exception e) {
			userStr = "san";
		}
		if (userStr.equals("sanjoy")) {
			ModelAndView ret = new ModelAndView("employee");
			ret.addObject("message", "User Sanjoy");
			return ret;
		} else {
			ModelAndView ret = new ModelAndView("loginForm");
			ret.addObject("message", "anynomious User");
			ret.addObject("userForm",user);
			return ret;
		}
	}

	public ModelAndView add(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("Calling Add Employee...");
		return new ModelAndView("employee", "message", "Employee Added");

	}

	public ModelAndView delete(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("Calling Delete Employee...");
		return new ModelAndView("employee", "message", "Employee Deleted");

	}

	public ModelAndView update(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("Calling Update Employee...");
		return new ModelAndView("employee", "message", "Employee Updated");

	}
}