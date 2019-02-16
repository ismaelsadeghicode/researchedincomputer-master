package com.research.service;

import com.research.model.Papier;

import java.util.List;

/**
 * Created by ismail on 12/10/2016.
 */
public interface PapierService {

    List<Papier> getPapierList();

    Papier getPapierById(int id);

    void addPapier(Papier papier);

    void editPapier(Papier papier);

    void deletePapier(Papier papier);
}
