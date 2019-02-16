package com.research.service;

import com.research.model.Cart;

/**
 * Created by ismail on 12/11/2016.
 */
public interface CartService {

    Cart getCartById(int cartId);

    void update(Cart cart);
}
