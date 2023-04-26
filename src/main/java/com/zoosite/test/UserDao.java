package com.zoosite.test;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

public class UserDao implements Dao<Users> {

    Session session;

    public UserDao() {
        session = HibernateUtil.getInstance().openSession();
    }

    @Override
    public Users get(long id) {

        Users user = session.get(Users.class, id);
        return user;
    }

    @Override
    public List<Users> getAll() {
        List<Users> userList = session.createNamedQuery("findUser", Users.class).list();
        return userList;
    }

    @Override
    public Boolean save(Users t) {

        Transaction tx = session.beginTransaction();
        List<Users> users = session.createNamedQuery("checkByEmail", Users.class).setParameter("email", t.getEmail()).list();
        if(users.size() > 0) { 
            return false;
        }
        session.persist(t);
        tx.commit();
        return true;
        
    }

    @Override
    public void update(Users t) {
        Transaction tx = session.beginTransaction();
        session.merge(t);
        tx.commit();
    }

    @Override
    public Users delete(int  id) {
        Transaction tx = session.beginTransaction();
        Users user = session.get(Users.class, id);
        user.setActive(0);
        session.merge(user);
        tx.commit();
        return user;
    }

    public Users validateUser(Users user) { 

        List<Users> u = session.createNamedQuery("validateUser", Users.class).setParameter("email", user.getEmail()).setParameter("password", user.getPassword()).list();
        if(u.size() > 0) { 
            return u.get(0);
        }
        return null;
    }

}
