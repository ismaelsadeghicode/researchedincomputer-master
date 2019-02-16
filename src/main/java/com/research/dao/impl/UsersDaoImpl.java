package com.research.dao.impl;

import com.research.dao.UsersDao;
import com.research.model.Papier;
import com.research.model.Users;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by ismail on 12/18/2016.
 */
@Repository
@Transactional
public class UsersDaoImpl implements UsersDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    public  Users getUsersById (int id) {
        Session session = sessionFactory.getCurrentSession();
        Users users = (Users) session.get(Users.class, id);
        session.flush();
        return users;
    }

    @Transactional
    public List<Users> getUsersList() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Users");
        List<Users> userss = query.list();
        session.flush();
        return userss;
    }

    @Transactional
    public void addUsers(Users users) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(users);
        session.flush();
    }

    @Transactional
    public void editUsers(Users users) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(users);
        session.flush();
    }

    @Transactional
    public void deleteUsers(Users users) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(users);
        session.flush();

    }
}
