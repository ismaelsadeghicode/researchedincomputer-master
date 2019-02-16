package com.research.service;

import com.research.model.Users;

import java.util.List;

/**
 * Created by ismail on 12/18/2016.
 */
public interface UsersService {

    List<Users> getUsersList();

    Users getUsersById(int id);

    void addUsers(Users users);

    void editUsers(Users users);

    void deleteUsers(Users users);
}
