package com.research.controller.admin;

import com.research.model.Authorities;
import com.research.model.Users;
import com.research.service.AuthoritiesService;
import com.research.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by ismail on 12/19/2016.
 */
@Controller
@RequestMapping("/admin")
public class AdminUser {

    @Autowired
    private UsersService usersService;

    @RequestMapping("/usersInventory/deleteUsers/{id}")
    public String deleteUsers(@PathVariable int id, Model model) {
        Users users=usersService.getUsersById(id);
        usersService.deleteUsers(users);
        return "redirect:/admin/usersInventory";
    }
}
