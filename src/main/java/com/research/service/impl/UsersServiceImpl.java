package com.research.service.impl;

import com.research.dao.PapierDao;
import com.research.dao.UsersDao;
import com.research.model.Users;
import com.research.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by ismail on 12/18/2016.
 */
@Service
public class UsersServiceImpl implements UsersService{

    @Autowired
    private UsersDao usersDao;

    public Users getUsersById(int usersId){
        return usersDao.getUsersById(usersId);
    }

    public List<Users> getUsersList(){
        return usersDao.getUsersList();
    }

    public void addUsers(Users users){
        usersDao.addUsers(users);
    }

    public void editUsers(Users users){
        usersDao.editUsers(users);
    }

    public void deleteUsers(Users users){
        usersDao.deleteUsers(users);
    }
}
