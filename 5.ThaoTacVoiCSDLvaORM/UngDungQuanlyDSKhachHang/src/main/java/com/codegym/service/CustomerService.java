package com.codegym.service;

import com.codegym.model.Customer;
import org.hibernate.SessionFactory;

import javax.persistence.EntityManager;
import java.util.List;

public interface CustomerService {


    List<Customer> findAll();

    Customer findOne(Long id);

    Customer save(Customer customer);

    List<Customer> saveList(List<Customer> customers);

    boolean exists();

    List<Customer> findAll(List<Long> ids);

    Long count();

    void deleteById(Long id);

    void deleteByCustomer(Customer customer);

    void deleteByList(List<Customer> customers);

    void deleteAll();
}
