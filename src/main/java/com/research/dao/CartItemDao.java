package com.research.dao;

import com.research.model.Cart;
import com.research.model.CartItem;

/**
 * Created by ismail on 12/12/2016.
 */
public interface CartItemDao {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByPapierId(int productId);
}
