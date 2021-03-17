package com.codegym.repository;

import com.codegym.model.Customer;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CustomerRepository {
    @Autowired
    SessionFactory sessionFactory;

    public void save(Customer customer) {
        Session session = sessionFactory.getCurrentSession();
        session.save(customer);
    }


    public void update(Customer customer) {
        Session session = sessionFactory.getCurrentSession();
        session.update(customer);
    }

    public Customer findById(long id) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(Customer.class, id);
    }


    public List<Customer> findAll() {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("from Customer", Customer.class).list();
    }

    public void delete(long id) {
        Session session = sessionFactory.getCurrentSession();
        Customer cus = session.get(Customer.class, id);
        session.delete(cus);
    }
}
