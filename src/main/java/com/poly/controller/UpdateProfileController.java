package com.poly.controller;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poly.model.Account;
import com.poly.repository.AccountDAO;
import com.poly.service.ParamService;
import com.poly.service.SessionService;

import jakarta.servlet.ServletContext;

@Controller
@RequestMapping("account")
public class UpdateProfileController {
	@Autowired
	AccountDAO dao;
	@Autowired
	ServletContext app;
	@Autowired
	SessionService sessionService;
	@Autowired
	ParamService paramService;

	@GetMapping("update-account")
	public String index(Model model, Account account) {
		account = dao.findById("minhduong").get();
		model.addAttribute("account", account);
		return "/account/update_account";
	}

	@PostMapping("update")
	public String update(Account account, @RequestParam("photo_file") MultipartFile img) {
		if(img.isEmpty()) {
			dao.save(account);
		}else {
			paramService.save(img, "/img/user-management");
			account.setPhoto(img.getOriginalFilename());
			dao.save(account);
		}
		return "redirect:/account/update-account";
	}

}
