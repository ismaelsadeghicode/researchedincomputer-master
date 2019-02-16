package com.research.service.impl;

import com.research.dao.PapierDao;
import com.research.model.Papier;
import com.research.service.PapierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by ismail on 12/10/2016.
 */
@Service
public class PapierServiceImpl implements PapierService {
    @Autowired
    private PapierDao papierDao;

    public Papier getPapierById(int papierId){
        return papierDao.getPapierById(papierId);
    }

    public List<Papier> getPapierList(){
        return papierDao.getPapierList();
    }

    public void addPapier(Papier papier){
        papierDao.addPapier(papier);
    }

    public void editPapier(Papier papier){
        papierDao.editPapier(papier);
    }

    public void deletePapier(Papier papier){
        papierDao.deletePapier(papier);
    }
}