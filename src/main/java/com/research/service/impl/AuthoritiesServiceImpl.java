package com.research.service.impl;

import com.research.dao.AuthoritiesDao;
import com.research.model.Authorities;
import com.research.service.AuthoritiesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by ismail on 12/18/2016.
 */
@Service
public class AuthoritiesServiceImpl implements AuthoritiesService {

    @Autowired
    private AuthoritiesDao authoritiesDao;

    public Authorities getAuthoritiesById(int authoritiesId){
        return authoritiesDao.getAuthoritiesById(authoritiesId);
    }

    public List<Authorities> getAuthoritiesList(){
        return authoritiesDao.getAuthoritiesList();
    }

    public void addAuthorities(Authorities authorities){
        authoritiesDao.addAuthorities(authorities);
    }

    public void editAuthorities(Authorities authorities){
        authoritiesDao.editAuthorities(authorities);
    }

    public void deleteAuthorities(Authorities authorities){
        authoritiesDao.deleteAuthorities(authorities);
    }
}

