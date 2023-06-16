package com.poly.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.poly.model.Account;
import com.poly.model.Cart;
import com.poly.model.CartDetail;
import com.poly.repository.AccountDAO;
import com.poly.repository.CartDAO;
import com.poly.repository.CartDetailDAO;
import com.poly.repository.OrderDetailDAO;
import com.poly.repository.ProductDAO;
import com.poly.service.SessionService;

@Controller
@RequestMapping("shop")
public class ShopController {
    @Autowired
    AccountDAO accountDAO;
    @Autowired
    SessionService sessionService;
    @Autowired
    CartDetailDAO cartDetailDAO;
    @Autowired
    CartDAO cartDAO;
    @Autowired
    OrderDetailDAO dao;
    @Autowired
    ProductDAO productDAO;

    @GetMapping("")
    public String index() {
        return "/client/shop";
    }

    @GetMapping("cart-detail")
    public String getCartDetailView(Model m) {
        // ! mockup get client form session
        Account account = accountDAO.findById("hoainam").get();
        // * get client form session
        sessionService.set("user", account);
        Cart cart = cartDAO.findByUsername("hoainam");
        List<CartDetail> cartDetails = cart.getCartDetails();
        int totalQuantity = 0;
        Double totalPrice = 0.0;
        for (CartDetail cartDetail : cartDetails) {
            totalPrice += (cartDetail.getProduct().getPrice() * cartDetail.getQuantity());
            totalQuantity += cartDetail.getQuantity();
        }
        sessionService.set("totalCart", totalQuantity);
        m.addAttribute("cartDetails", cartDetails);
        m.addAttribute("totalPrice", totalPrice);
        m.addAttribute("cart", cart);
        return "/client/cart-detail";
    }

    @GetMapping("/cart-detail/add/{productId}")
    public String addCartDetail(@PathVariable("productId") Integer productId) {
        // mock client form session
        Account account = sessionService.get("user");
        Cart cart = cartDAO.findByUsername(account.getUsername());
        CartDetail cartDetail = new CartDetail();
        cartDetail.setProduct(productDAO.findById(productId).get());
        CartDetail testCarDetail = cartDetailDAO.findByProduct(productDAO.findById(productId).get());
        int totalQuantity = 0;
        if (testCarDetail == null) {
            cartDetail.setQuantity(1);
        } else {
            cartDetail = testCarDetail;
            cartDetail.setQuantity(cartDetail.getQuantity() + 1);
        }
        for (CartDetail cd : cart.getCartDetails()) {
            totalQuantity += cd.getQuantity();
        }
        cart.setQuantity(totalQuantity);
        cartDetail.setCart(cart);
        cartDetailDAO.save(cartDetail);
        sessionService.set("totalCart", totalQuantity);
        sessionService.set("isUpdated", true);
        return "redirect:/shop";
    }

    @PostMapping("/cart-detail/add")
    public String addCartDetailFromProductDetail(@RequestParam("productId") Integer productId,
            @RequestParam("quantity") Integer quantity) {
        // mock client form session
        Account account = sessionService.get("user");
        Cart cart = cartDAO.findByUsername(account.getUsername());
        CartDetail cartDetail = new CartDetail();
        cartDetail.setProduct(productDAO.findById(productId).get());
        CartDetail testCarDetail = cartDetailDAO.findByProduct(productDAO.findById(productId).get());
        int totalQuantity = 0;
        if (testCarDetail == null) {
            cartDetail.setQuantity(quantity);
        } else {
            cartDetail = testCarDetail;
            cartDetail.setQuantity(cartDetail.getQuantity() + quantity);
        }
        for (CartDetail cd : cart.getCartDetails()) {
            totalQuantity += cd.getQuantity();

        }
        cart.setQuantity(totalQuantity);
        cartDetail.setCart(cart);
        cartDetailDAO.save(cartDetail);
        sessionService.set("totalCart", totalQuantity);
        sessionService.set("isUpdated", true);
        return "redirect:/shop";
    }

    @PostMapping("cart-detail/update")
    public String updateCartDetail(@RequestParam("cartdetailId") Integer cartdetailId,
            @RequestParam("quantity") Integer quantity) {
        System.out.println("cartdetailId " + cartdetailId + " " + quantity);
        CartDetail cartDetail = cartDetailDAO.findById(cartdetailId).get();
        cartDetail.setQuantity(quantity);
        cartDetailDAO.save(cartDetail);
        System.out.println(cartDetail.getQuantity());
        return "redirect:/shop/cart-detail";
    }

    @GetMapping("cart-detail/delete/{id}")
    public String deleteCartDetail(@PathVariable("id") Integer cartdetailId) {
        cartDetailDAO.deleteById(cartdetailId);
        return "redirect:/shop/cart-detail";
    }

    @GetMapping("cart-detail/checkout")
    public String goToCheckout() {
        sessionService.set("listCart", cartDAO.findByUsername("hoainam").getCartDetails());
        List<CartDetail> list = sessionService.get("listCart");
        System.out.println(list.get(0).getId());
        ;
        return "redirect:/shop/checkout";
    }
}
