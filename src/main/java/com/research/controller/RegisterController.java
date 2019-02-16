package com.research.controller;

import com.research.model.BillingAddress;
import com.research.model.Customer;
import com.research.model.ShippingAddress;
import com.research.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by ismail on 12/10/2016.
 */
@Controller
public class RegisterController {

    @Autowired
    private CustomerService customerService;

    @RequestMapping("/register")
    public String registerCustomer(Model model){
        Customer customer=new Customer();
        BillingAddress billingAddress=new BillingAddress();
        ShippingAddress shippingAddress=new ShippingAddress();
        customer.setBillingAddress(billingAddress);
        customer.setShippingAddress(shippingAddress);

        model.addAttribute("customer",customer);

        return "registerCustomer";
    }

    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public String registerCustomer(@ModelAttribute("customer") Customer customer,Model model){
        customer.setEnabled(true);
        customerService.addCustomer(customer);

        return "registerCustomerSuccess";
    }


}
