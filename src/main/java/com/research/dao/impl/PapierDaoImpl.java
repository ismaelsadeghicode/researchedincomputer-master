                        package com.research.dao.impl;

import com.research.dao.PapierDao;
import com.research.model.Papier;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by ismail on 12/9/2016.
 */
@Repository
@Transactional
public class PapierDaoImpl implements PapierDao {


    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    public Papier getPapierById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Papier Papier = (Papier) session.get(Papier.class, id);
        session.flush();
        return Papier;
    }

    @Transactional
    public List<Papier> getPapierList() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Papier");
        List<Papier> papiers = query.list();
        session.flush();
        return papiers;
    }

    @Transactional
    public void addPapier(Papier papier) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(papier);
        session.flush();
    }

    @Transactional
    public void editPapier(Papier papier) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(papier);
        session.flush();
    }

    @Transactional
    public void deletePapier(Papier papier) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(papier);
        session.flush();

    }
}
