package com.research.service;

import com.research.model.Customer;

import java.util.List;

/**
 * Created by ismail on 12/10/2016.
 */
public interface CustomerService {

    void addCustomer(Customer customer);

    void editCustomer(Customer customer);

    void deleteCustomer(Customer customer);

    Customer getCustomerById(int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername(String username);
}
