package com.tzg.xhd.tbooking.controller;

import com.tzg.xhd.tbooking.service.provinceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller("mainContoller")
public class mainController {
    @Autowired
    private provinceService provinceService;

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String index(HttpServletRequest request, HttpServletResponse response){
        request.setAttribute("provinceList",provinceService.getAllProvince());
        return "test";
    }
}
