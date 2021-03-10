package com.codegym.service;

import com.codegym.model.Customer;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Service
public class CustomerService {
    List<Customer> customerList = new ArrayList<>();

    {
        customerList.add(new Customer(1,"hiep","H@gmail.com","13 pham thi lien"));
        customerList.add(new Customer(2,"fg","S@gmail.com","121teanyfgv"));
        customerList.add(new Customer(3,"thang","th@gmail.com","121teanyfgv"));

    }

    public List<Customer> getAll(){
        return customerList;
    }

    public void add(Customer customer){
        customerList.add(customer);
    }

    public Customer getById(int id) {
        for (Customer customer : customerList) {
            if (customer.getId() == id) {
                return customer;
            }
        }
        return null;
    }
    public boolean update(Customer customer) {
        Customer customer1 = getById(customer.getId());
        if (customer1 == null) {
            return false;
        }
        customer1.setName(customer.getName());
        customer1.setEmail(customer.getEmail());
        customer1.setAddress(customer.getAddress());
        return true;
    }
}
