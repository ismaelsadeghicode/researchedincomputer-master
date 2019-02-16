package com.research.dao.impl;

import com.research.dao.CartDao;
import com.research.model.Cart;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by ismail on 12/11/2016.
 */
@Repository
@Transactional
public class CartDaoImpl implements CartDao {

    @Autowired
    private SessionFactory sessionFactory;

    public Cart getCartById(int cartId){
        Session session=sessionFactory.getCurrentSession();
        return (Cart) session.get(Cart.class,cartId);
    }

    public void update(Cart cart){
        int cartId=cart.getCartId();

    }

}
