package jbr.spring.boot.controller;

import java.util.List;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import jbr.spring.boot.dao.DBHandler;
import jbr.spring.boot.model.User;

@Controller
public class RegistrationController {

	@Autowired
	DBHandler dBHandler;

	@PostMapping(value = "/registrationProcess")
	public String addUser(@ModelAttribute("user") User user, ModelMap model) {
		boolean newUser=true;

		String sql = "INSERT INTO springboot.userdetails "
				+ "(userid,password,firstname,lastname,email,address,phone) values('" + user.getUsername() + "','"
				+ user.getPassword() + "','" + user.getFirstname() + "','" + user.getLastname() + "','"
				+ user.getEmail() + "','" + user.getAddress() + "','" + user.getPhone() + "')";
		String sql1 = "INSERT INTO springboot.user "
				+"(userid,password,firstname) values('" + user.getUsername()+ "','" +user.getPassword()+ "','" +user.getFirstname() + "')";
		
		int result1 = dBHandler.insertOrUpdate(sql1, null);
		int result = dBHandler.insertOrUpdate(sql, null);
		
		System.out.println(result);
		
		if(result != 1) {
			model.addAttribute("errormessage", "user ID Already exists/ Try anather one");
			newUser = false;

			return "registration";
		}
		
		model.addAttribute("userid", user.getUsername());
		model.addAttribute("address", user.getAddress());

		return newUser ? "success" : "registration";

	}
}
