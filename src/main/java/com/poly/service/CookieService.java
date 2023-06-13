package com.poly.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Service
public class CookieService {
    @Autowired
    HttpServletRequest request;
    @Autowired
    HttpServletResponse response;

    public Cookie get(String name) {
        Cookie[] cookies = request.getCookies();
        for (Cookie ck : cookies) {
            if (ck.getName().equalsIgnoreCase(name))
                return ck;
        }
        return null;
    }

    public String getValue(String name) {
        Cookie[] cookies = request.getCookies();
        for (Cookie ck : cookies) {
            if (ck.getName().equalsIgnoreCase(name))
                return ck.getValue();
        }
        return "";
    }

    public Cookie add(String name, String value, int hour) {
        Cookie cookie = new Cookie(name, value);
        cookie.setPath("/");
        cookie.setMaxAge(hour * 60 * 60);
        response.addCookie(cookie);
        return cookie;
    }

    public void remove(String name) {
        // create a cookie
        Cookie cookie = new Cookie(name, null);
        cookie.setMaxAge(0);
        cookie.setSecure(true);
        cookie.setHttpOnly(true);
        cookie.setPath("/");
        // add cookie to response
        response.addCookie(cookie);
    }
}
