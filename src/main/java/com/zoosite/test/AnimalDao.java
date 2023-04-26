package com.zoosite.test;

import java.util.List;

import org.hibernate.Session;

public class AnimalDao implements Dao<Animals> {
    Session session;

    public AnimalDao() {
        session = HibernateUtil.getInstance().openSession();
    }

    @Override
    public Animals get(long id) {

        return null;
    }

    @Override
    public List<Animals> getAll() {
        List<Animals> animals =  session.createNamedQuery("findAnimals", Animals.class).list();
        return animals;
        
    }

    @Override
    public Boolean save(Animals t) {
        return null;
    }

    @Override
    public void update(Animals t) {
    }

    @Override
    public Animals delete(int t) {
        return null;
    }

}