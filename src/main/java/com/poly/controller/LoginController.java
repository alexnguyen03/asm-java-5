package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.poly.model.Account;
import com.poly.repository.AccountDAO;
import com.poly.service.CookieService;
import com.poly.service.ParamService;
import com.poly.service.SessionService;

@Controller
@RequestMapping("account")
public class LoginController {
	@Autowired
	AccountDAO dao;
	@Autowired
	SessionService session;
	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;

	@GetMapping("/login")
	public String showLoginForm(Model model) {
		String username = cookieService.getValue("username");
		if (username != null) {
			model.addAttribute("username", username);
		}
		if (username != null) {
			model.addAttribute("username", username);
		}
		return "/account/login";
	}

	@PostMapping("/login")
	public String processLoginForm(Model model) {
		System.out.println("*******************************");
		String username = paramService.getString("username", "");
		String password = paramService.getString("password", "");
		boolean remember = paramService.getBoolean("remember", false);
		Account accountStore = dao.findById(username).orElse(null);
		if (username != null) {
			session.set("username", username);
		}
		if (accountStore == null) {
			model.addAttribute("message", "Tài khoản không tồn tại");
			return "/account/login";
		} else if (!accountStore.getPassword().equals(password)) {
			model.addAttribute("message", "Sai mật khẩu");
			return "/account/login";
		} else {
			if (remember) {
				cookieService.add("username", username, 24);
			} else {
				cookieService.remove("username");
			}
		}
		session.set("username", username);
		Account account = dao.findById(session.get("username")).get();
		session.set("account", account);
		return "redirect:/";
	}
}
