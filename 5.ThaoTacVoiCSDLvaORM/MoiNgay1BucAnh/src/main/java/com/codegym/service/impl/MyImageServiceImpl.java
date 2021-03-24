package com.codegym.service.impl;

import com.codegym.model.MyImage;
import com.codegym.repository.MyImageRepository;
import com.codegym.service.MyImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MyImageServiceImpl implements MyImageService {

    @Autowired
    private MyImageRepository myImageRepository;

    @Override
    public List<MyImage> findAll() {
        return myImageRepository.findAll();
    }

    @Override
    public MyImage findById(Long id) {
        return myImageRepository.findById(id);
    }

    @Override
    public void save(MyImage myImage) {
    myImageRepository.save(myImage);
    }

    @Override
    public void remove(Long id) {
    myImageRepository.remove(id);
    }
}
