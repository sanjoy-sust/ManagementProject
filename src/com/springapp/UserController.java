package com.springapp;

import java.util.ArrayList;

import javax.jws.WebParam.Mode;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.dao.UserDAO;
import com.domain.User;

public class UserController extends MultiActionController {
	private UserDAO userDAO;

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	public ModelAndView login(HttpServletRequest request,
			HttpServletResponse response, User user) {

		if (user.getName() == null) {
			ModelAndView ret = new ModelAndView("loginForm");
			ret.addObject("message", "anynomious User");
			ret.addObject("userForm", user);
			return ret;
		} else {
			String userStr = user.getName();
			String password = user.getPassword();
			ModelAndView ret = new ModelAndView("employee");
			ret.addObject("message", "User " + userStr);
			return ret;
		}
	}

	public ModelAndView register(HttpServletRequest request,
			HttpServletResponse response, User user) {
		ModelAndView ret = new ModelAndView("register");
		if (user.getName() == null) {
			ret.addObject("success", "notsuccess");
		} else {
			// userDAO.saveUser(user);
			ret.addObject("success", "success");
		}
		ret.addObject("user", user);

		return ret;
	}

	public ModelAndView registerSave(HttpServletRequest request,
			HttpServletResponse response, User user) {
		userDAO.saveUser(user);
		return new ModelAndView("message");
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
			HttpServletResponse response, User user) throws Exception {
		User u = user;
	    ModelAndView ret =	new ModelAndView("update");
	    ret.addObject("user",user);
		return ret;
	}

	public ModelAndView userList(HttpServletRequest request,
			HttpServletResponse response,User user) {
		ModelAndView ret = new ModelAndView("userList");
		ret.addObject("user", user);
		ret.addObject("userList", userDAO.listUser());
		return ret;
	}
}