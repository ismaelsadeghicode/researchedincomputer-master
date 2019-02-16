package com.research.dao.impl;

import com.research.dao.JournalDao;
import com.research.model.Journal;
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
public class JournalDaoImpl implements JournalDao {


    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    public void addJournal(Journal journal) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(journal);
        session.flush();
    }

    @Transactional
    public void editJournal(Journal journal) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(journal);
        session.flush();
    }

    @Transactional
    public Journal getJournalById(String id) {
        Session session = sessionFactory.getCurrentSession();
        Journal journal = (Journal) session.get(Journal.class, id);
        session.flush();
        return journal;
    }

    @Transactional
    public List<Journal> getAllJournal() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Journal");
        List<Journal> journals = query.list();
        session.flush();
        return journals;
    }

    @Transactional
    public void deleteJournal(String id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(getJournalById(id));
        session.flush();
        ;
    }

}
