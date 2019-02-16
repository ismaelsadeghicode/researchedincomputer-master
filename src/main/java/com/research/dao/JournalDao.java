package com.research.dao;

import com.research.model.Journal;

import java.util.List;

/**
 * Created by ismail on 12/7/2016.
 */
public interface JournalDao {

    void addJournal(Journal journal);

    void editJournal(Journal journal);

    Journal getJournalById(String Id);

    List<Journal> getAllJournal();

    void deleteJournal(String Id);

}
