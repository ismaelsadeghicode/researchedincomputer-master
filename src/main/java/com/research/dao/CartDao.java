package com.research.dao;

import com.research.model.Cart;

import java.io.IOException;

/**
 * Created by ismail on 12/11/2016.
 */
public interface CartDao {

    Cart getCartById(int cartId);

    void update(Cart cart);
}
