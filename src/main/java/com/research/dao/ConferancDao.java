package com.research.dao;

import com.research.model.Conferanc;
import com.research.model.Journal;

import java.util.List;

/**
 * Created by ismail on 12/7/2016.
 */
public interface ConferancDao {

    void addConferanc(Conferanc conferanc);

    void editConferanc(Conferanc conferanc);

    Conferanc getConferancById(int Id);

    List<Conferanc> getAllConferanc();

    void deleteConferanc(int Id);
}
