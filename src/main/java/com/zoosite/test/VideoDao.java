package com.zoosite.test;

import java.util.List;

import org.hibernate.Session;

public class VideoDao implements Dao{
    Session session;
    public VideoDao() { 
        session = HibernateUtil.getInstance().openSession();
    }
    @Override
    public Video get(long id) {
        return null;
    }

    @Override
    public List<Video> getAll() {
        List<Video> videoList = session.createNamedQuery("findVideo", Video.class).list();
        return videoList;
    }

    @Override
    public Boolean save(Object t) {
        return false;        
    }

    @Override
    public void update(Object t) {
        
    }

    @Override
    public Video delete(int t) {
        return null;
    }
    
}
