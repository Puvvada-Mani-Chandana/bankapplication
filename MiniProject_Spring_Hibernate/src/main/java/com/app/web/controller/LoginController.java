package com.app.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.app.model.entity.User;
import com.app.model.service.UserService;
import com.app.web.formbeans.LoginBean;


@Controller
public class LoginController {

	private UserService userService;

	@Autowired
	public LoginController(UserService userService) {
		super();
		this.userService = userService;
	}

	@RequestMapping(value="/",method=RequestMethod.GET)
	public String home() {
		return "show";
	}
//	@RequestMapping(value = "/", method = RequestMethod.GET) 
//	public String displayLogin(Model model) { 
//	    model.addAttribute("login", new LoginBean()); 
//	    return "login"; 
//	}


	@RequestMapping(value ="/signup" , method = RequestMethod.GET)
	public String signupGet(ModelMap map) {
		map.addAttribute("loginBean", new LoginBean());
		return "signup";
	}

	@RequestMapping(value="/signedup", method=RequestMethod.POST)
	public String signupPost(@Valid @ModelAttribute("loginBean") User loginBean,BindingResult result) {
		if(result.hasErrors()) {
			return "redirect:/signup";
		} else {
		userService.addUser(loginBean);
		System.out.println("--------------------");
		return "redirect:/login";
		}
	}

	@GetMapping("login")
	public String loginGet(ModelMap map) {
		map.addAttribute("loginBean", new LoginBean());
		return "login";
	}

	@PostMapping("login")
	public String loginPost(@Valid @ModelAttribute("loginBean") LoginBean loginBean,BindingResult result, HttpServletRequest req) {

		String username = loginBean.getUsername();
		String password = loginBean.getPassword();
		boolean isValid = userService.verifyDetails(username, password);
		System.out.println(isValid);
		if (isValid) {
			User user1 = userService.getUser(username, password);
			System.out.println(user1);
			HttpSession session = req.getSession();
			session.setAttribute("user", user1);

			return "redirect:/home";
		} else {
			return "redirect:/login";
		}
	}
}
