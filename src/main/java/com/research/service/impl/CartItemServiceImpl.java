package com.research.service.impl;

import com.research.dao.CartItemDao;
import com.research.dao.impl.CartDaoImpl;
import com.research.model.Cart;
import com.research.model.CartItem;
import com.research.dao.impl.CartDaoImpl;
import com.research.service.CartItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by ismail on 12/11/2016.
 */
@Service
public class CartItemServiceImpl implements CartItemService {

    @Autowired
    private CartItemDao cartItemDao;

    public void addCartItem(CartItem cartItem){
        cartItemDao.addCartItem(cartItem);
    }

    public void removeCartItem(CartItem cartItem){
        cartItemDao.removeCartItem(cartItem);
    }

    public void removeAllCartItems(Cart cart){
        cartItemDao.removeAllCartItems(cart);
    }

    public CartItem getCartItemByPapierId(int papierId){
     return  cartItemDao.getCartItemByPapierId(papierId);
    }

}
