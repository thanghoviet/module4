package com.codegym.service;

import com.codegym.model.Customer;
import com.codegym.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
public class CustomerService {
    @Autowired
    CustomerRepository customerRepository;

    @Transactional
    public void save(Customer customer) {
        customerRepository.save(customer);
    }
    @Transactional
    public void update(Customer customer){
        customerRepository.update(customer);
    }
    @Transactional
    public void fineById(Long id){
        customerRepository.findById(id);
    }
    @Transactional
    public void delete(long id){

    }
}
