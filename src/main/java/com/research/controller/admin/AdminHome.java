package com.research.controller.admin;

import com.research.dao.ConferancDao;
import com.research.dao.PapierDao;
import com.research.model.*;
import com.research.service.AuthoritiesService;
import com.research.service.PapierService;
import com.research.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.nio.file.Path;
import java.util.List;

/**
 * Created by ismail on 12/10/2016.
 */
@Controller
@RequestMapping("/admin")
public class AdminHome {

    @Autowired
    private PapierService papierService;

    @Autowired
    private UsersService usersService;

    @Autowired
    private AuthoritiesService authoritiesService;

    @RequestMapping
    public String adminPage(){
        return "admin";
    }

    @RequestMapping("/papierInventory")
    public String papierInventory(Model model) {
        List<Papier> papiers = papierService.getPapierList();
        model.addAttribute("papiers", papiers);
        return "papierInventory";
    }

    @RequestMapping("/usersInventory")
    public String usersInventory(Model model) {
        List<Users> userss = usersService.getUsersList();
        model.addAttribute("userss", userss);
        return "usersInventory";
    }


    @RequestMapping("/customer")
    public String customerManagerment(Model model){

//        List<Customer> customerList = customerService.getAllCustomers();
//        model.addAttribute("customerList", customerList);

        return "customerManagement";
    }
}
