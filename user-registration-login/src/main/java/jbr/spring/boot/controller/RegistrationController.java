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

		String sql = "INSERT INTO springboot.user "
				+ "(username,password,firstname,lastname,email,address,phone) values('" + user.getUsername() + "','"
				+ user.getPassword() + "','" + user.getFirstname() + "','" + user.getLastname() + "','"
				+ user.getEmail() + "','" + user.getAddress() + "','" + user.getPhone() + "')";
		int result = dBHandler.insertOrUpdate(sql, null);
		model.addAttribute("username", user.getUsername());
		model.addAttribute("address", user.getAddress());

		return result == 0 ? "registration" : "success";
	}
}
