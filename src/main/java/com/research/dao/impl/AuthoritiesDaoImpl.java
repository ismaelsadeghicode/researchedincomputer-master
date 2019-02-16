package com.research.dao.impl;

import com.research.dao.AuthoritiesDao;
import com.research.model.Authorities;
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
public class AuthoritiesDaoImpl implements AuthoritiesDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    public Authorities getAuthoritiesById (int id) {
        Session session = sessionFactory.getCurrentSession();
        Authorities authorities = (Authorities) session.get(Authorities.class, id);
        session.flush();
        return authorities;
    }

    @Transactional
    public List<Authorities> getAuthoritiesList() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Authorities");
        List<Authorities> authorities = query.list();
        session.flush();
        return authorities;
    }

    @Transactional
    public void addAuthorities(Authorities authorities) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(authorities);
        session.flush();
    }

    @Transactional
    public void editAuthorities(Authorities authorities) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(authorities);
        session.flush();
    }

    @Transactional
    public void deleteAuthorities(Authorities authorities) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(authorities);
        session.flush();

    }
}
