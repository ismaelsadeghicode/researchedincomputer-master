package com.research.dao.impl;

import com.research.dao.ConferancDao;
import com.research.model.Conferanc;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by ismail on 12/7/2016.
 */
@Repository
@Transactional
public class ConferancDaoImpl implements ConferancDao {


    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    public void addConferanc(Conferanc conferanc) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(conferanc);
        session.flush();
    }

    @Transactional
    public void editConferanc(Conferanc conferanc) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(conferanc);
        session.flush();
    }

    @Transactional
    public Conferanc getConferancById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Conferanc conferanc = (Conferanc) session.get(Conferanc.class, id);
        session.flush();
        return conferanc;
    }

    @Transactional
    public List<Conferanc> getAllConferanc() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Conferanc");
        List<Conferanc> conferancs = query.list();
        session.flush();
        return conferancs;
    }

    @Transactional
    public void deleteConferanc(int id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(getConferancById(id));
        session.flush();

    }
}
