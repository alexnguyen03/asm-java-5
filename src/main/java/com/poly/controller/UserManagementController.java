package com.poly.controller;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.poly.model.Account;
import com.poly.model.Product;
import com.poly.repository.AccountDAO;
import com.poly.service.SessionService;

@Controller
@RequestMapping("/admin")
public class UserManagementController {
    @Autowired
    AccountDAO accountDAO;
    @Autowired
    SessionService sessionService;

    @GetMapping("user")
    public String userManagementView(Model m) {
        int defaultPage = 2;
        String defaultField = "username";
        // Account account = new Account();
        // m.addAttribute("account", account);
        // Pageable pageable = PageRequest.of(0, defaultPage,
        // Sort.by(defaultField).ascending());
        // Page<Account> accountPages = accountDAO.findAll(pageable);
        // m.addAttribute("users", accountPages);
        // System.out.println(accountPages.getContent());
        System.out.println("" + sessionService.get("isUpdated"));
        if (sessionService.get("isUpdated") != null) {
            m.addAttribute("isUpdated", true);
            sessionService.remove("isUpdated");
        }
        List<Account> users = accountDAO.findAll();
        m.addAttribute("users", users);
        m.addAttribute("title", "QUẢN LÝ NGƯỜI DÙNG");
        m.addAttribute("pageActive", "user");
        return "/admin/user";
    }

    @PostMapping("/user/delete/{id}")
    public String disableUser(@PathVariable("id") String id) {
        Account account = accountDAO.findById(id).get();
        account.setActivated(false);
        accountDAO.save(account);
        sessionService.set("isUpdated", true);
        return "redirect:/admin/user";
    }

    @PostMapping("/user/restore/{id}")
    public String restoreUser(@PathVariable("id") String id) {
        Account account = accountDAO.findById(id).get();
        account.setActivated(true);
        accountDAO.save(account);
        sessionService.set("isUpdated", true);
        return "redirect:/admin/user";
    }

    @RequestMapping("sort")
    public String sortAndPaging(Model model, @RequestParam("field") Optional<String> field,
            @RequestParam("eop") Optional<Integer> eop,
            @RequestParam("p") Optional<Integer> p) {
        int defaultPage = 2;
        String defaultField = "username";
        // sorting and paging by price is default
        Pageable pageable = PageRequest.of(p.orElse(0), eop.orElse(defaultPage),
                Sort.by(field.orElse(defaultField)).ascending());
        Page<Account> page = accountDAO.findAll(pageable);
        model.addAttribute("eop", eop.orElse(2));
        model.addAttribute("page", page);
        return ("/admin/user");
    }
}
