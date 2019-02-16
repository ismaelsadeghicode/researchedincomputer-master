package com.research.dao.impl;

import com.research.dao.CustomerDao;
import com.research.model.Authorities;
import com.research.model.Cart;
import com.research.model.Customer;
import com.research.model.Users;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by ismail on 12/10/2016.
 */
@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void addCustomer(Customer customer){
        Session session = sessionFactory.getCurrentSession();

//        customer.getBillingAddress().setCustomer(customer);
//        customer.getShippingAddress().setCustomer(customer);

        session.saveOrUpdate(customer);
//        session.saveOrUpdate(customer.getBillingAddress());
//        session.saveOrUpdate(customer.getShippingAddress());
//     اضافه کردن کاربر به پایگاه داده
        Users newUser = new Users();
        newUser.setUsername(customer.getUsername());
        newUser.setPassword(customer.getPassword());
        newUser.setEnabled(true);
        newUser.setCustomerId(customer.getCutomerId());
//اضافه کردن به جدول چک
        Authorities newAuthorities = new Authorities();
        newAuthorities.setUsername(customer.getUsername());
        newAuthorities.setAuthority("ROLE_USER");

        session.saveOrUpdate(newUser);
        session.saveOrUpdate(newAuthorities);
//اضافه کردن به جدول کارت
//        Cart newCart = new Cart();
//        newCart.setCustomer(customer);
//        customer.setCart(newCart);

//        session.saveOrUpdate(customer);
//        session.saveOrUpdate(newCart);

        session.flush();
    }

    public void editCustomer(Customer customer){
        Session session = sessionFactory.getCurrentSession();
        session.delete(customer);
        session.flush();
    }

    public void deleteCustomer(Customer customer){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(customer);
        session.flush();
    }


    public Customer getCustomerById(int customerId){
        Session session = sessionFactory.getCurrentSession();
        return (Customer) session.get(Customer.class, customerId);
    }

    public List<Customer> getAllCustomers(){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Customer");
        List<Customer> customerList = query.list();

        return customerList;

    }

//    public Customer getCustomerByUsername(String username){
//        Session session = sessionFactory.getCurrentSession();
//        Query query = session.createQuery("from Customer where username = ?");
//        query.setString(0, username);
//
//
//        return (Customer) query.uniqueResult();
//    }

    public Customer getCustomerByUsername(String username){
        Session session = sessionFactory.getCurrentSession();
        Query query=session.createQuery("from Customer where username=?");
        query.setString(0,username);

        return (Customer) query.uniqueResult();
    }
}
