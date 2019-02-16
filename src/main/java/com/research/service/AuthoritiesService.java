package com.research.service;

import com.research.model.Authorities;

import java.util.List;

/**
 * Created by ismail on 12/18/2016.
 */
public interface AuthoritiesService {

    List<Authorities> getAuthoritiesList();

    Authorities getAuthoritiesById(int id);

    void addAuthorities(Authorities authorities);

    void editAuthorities(Authorities authorities);

    void deleteAuthorities(Authorities authorities);
}
