package com.zoosite.test;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Root;

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

        List<Animals> animals =  session.createNamedQuery("findAnimals", Animals.class).getResultList();
        
        return animals;
    }

    @Override
    public Boolean save(Animals t) {
        Transaction tx = session.beginTransaction();
        session.persist(t);
        tx.commit();
        return true;

    }

    @Override
    public void update(Animals t) {
        Transaction tx = session.beginTransaction();
      session.merge(t);
        tx.commit();
    }

    @Override
    public Animals delete(int t) {
        return null;
    }

}