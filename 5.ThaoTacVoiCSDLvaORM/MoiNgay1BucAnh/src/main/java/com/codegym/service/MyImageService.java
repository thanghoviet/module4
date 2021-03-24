package com.codegym.service;

import com.codegym.model.MyImage;

import java.util.List;

public interface MyImageService {
    List<MyImage> findAll();

    MyImage findById(Long id);

    void save(MyImage myImage);

    void remove(Long id);
}
