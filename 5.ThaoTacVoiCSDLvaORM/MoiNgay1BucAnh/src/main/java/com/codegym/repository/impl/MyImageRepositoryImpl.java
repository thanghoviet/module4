package com.codegym.repository.impl;

import com.codegym.model.MyImage;
import com.codegym.repository.MyImageRepository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.util.List;

public class MyImageRepositoryImpl implements MyImageRepository {
    @PersistenceContext
    public EntityManager entityManager;

    @Override
    public List<MyImage> findAll() {
        TypedQuery<MyImage> query = entityManager.createQuery("select m from MyImage m ", MyImage.class);
        return query.getResultList();
    }

    @Override
    public MyImage findById(Long id) {
        TypedQuery<MyImage> query = entityManager.createQuery("select m from MyImage m where m.id=:id",
                MyImage.class);
        return query.getSingleResult();
    }

    @Override
    public void save(MyImage model) {
        if (model.getId() != null) {
            entityManager.merge(model);
        } else {
            entityManager.persist(model);
        }
    }

    @Override
    public void remove(Long id) {
        MyImage myImage = findById(id);
        if (myImage != null) {
            entityManager.remove(myImage);
        }
    }
}
