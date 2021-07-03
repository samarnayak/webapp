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
		boolean newUser = true;

		String sql = "INSERT INTO springboot.userdetails "
				+ "(userid,password,firstname,lastname,email,address,phone) values('" + user.getUsername() + "','"
				+ user.getPassword() + "','" + user.getFirstname() + "','" + user.getLastname() + "','"
				+ user.getEmail() + "','" + user.getAddress() + "','" + user.getPhone() + "')";
		String sql1 = "INSERT INTO springboot.user " + "(username,password,firstname,lastname,email,address,phone) "
				+ "values('" + user.getUsername() + "'," + "'" + user.getPassword() + "'," + "'" + user.getFirstname()
				+ "'," + "'" + user.getLastname() + "'," + "'" + user.getEmail() + "'," + "'" + user.getAddress() + "',"
				+ "'" + user.getPhone() + "'" + ")";
		
		String isUserExistsSql = "select count(*) as count from user where username='" + user.getUsername()+ "'";

		// Step 1: First Check if the user exists or not 
		List<Map<String, Object>> resultuserExists = dBHandler.select(isUserExistsSql, null);
		if(Integer.parseInt( resultuserExists.get(0).get("count").toString()) > 0) {
			model.addAttribute("errormessage", "user ID Already exists/ Try anather one");
			return "registration";
		}
		
		// int result1 = dBHandler.insertOrUpdate(sql1, null);
		System.out.println("Sql Query: " + sql1);
		try {
			int result = dBHandler.insertOrUpdate(sql1, null);

			if (result != 1) {
				model.addAttribute("errormessage", "Not able to update on databse, Try again after sometime");
				newUser = false;

				return "registration";
			}
		} catch (Exception ex) {
			model.addAttribute("errormessage", ex.getMessage());
			return "registration";
		}
		model.addAttribute("userid", user.getUsername());
		model.addAttribute("address", user.getAddress());

		return newUser ? "success" : "registration";

	}
}
