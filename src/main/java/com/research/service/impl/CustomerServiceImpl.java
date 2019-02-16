package com.research.service.impl;

import com.research.dao.CustomerDao;
import com.research.model.Customer;
import com.research.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by ismail on 12/10/2016.
 */
@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerDao customerDao;

    public void addCustomer(Customer customer){
        customerDao.addCustomer(customer);
    }

    public void editCustomer(Customer customer){
        customerDao.editCustomer(customer);
    }

    public void deleteCustomer(Customer customer){
        customerDao.deleteCustomer(customer);
    }

    public Customer getCustomerById(int customerId){
        return customerDao.getCustomerById(customerId);
    }

    public List<Customer> getAllCustomers(){
        return customerDao.getAllCustomers();
    }

    public Customer getCustomerByUsername(String username){
        return customerDao.getCustomerByUsername(username);
    }
}
