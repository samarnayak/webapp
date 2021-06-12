package jbr.spring.boot.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import jbr.spring.boot.dao.DBHandler;
import jbr.spring.boot.model.Login;
import jbr.spring.boot.model.User;

@Controller
public class LoginController {
	
	@Autowired
	DBHandler dBHandler;

	@PostMapping(value = "/loginProcess")
	public String login(@ModelAttribute("login") Login login, BindingResult bindingResult, ModelMap model) {

		// User user = userService.validateUser(login);
		User user = new User();

		boolean isValidUser = false;
		
		String sql = "select username from springboot.user "
				+ "where username='" + login.getUsername() + "' and password='" + login.getPassword() + "'";
		
		List<Map<String, Object>> result = dBHandler.select(sql, null);
		
		System.out.println(result);
		
		if(result == null) {
			model.addAttribute("errormessage", "username/password not correct");
			return "login";
		}
		if (result.isEmpty() == true) {
			model.addAttribute("errormessage", "username/password not correct");
			return "login";
		}
		isValidUser = true;
		
		model.addAttribute("username", login.getUsername());
		model.addAttribute("password", login.getPassword());

		return isValidUser ? "welcome" : "login";
	}
}
