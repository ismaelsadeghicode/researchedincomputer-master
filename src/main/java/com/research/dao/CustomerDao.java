package com.research.dao;

import com.research.model.Customer;
import com.research.model.Users;

import java.util.List;

/**
 * Created by ismail on 12/10/2016.
 */
public interface CustomerDao {

    void addCustomer(Customer customer);

    void editCustomer(Customer customer);

    void deleteCustomer(Customer customer);

    Customer getCustomerById(int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername(String username);
}
