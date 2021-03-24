package com.codegym.repository;

import com.codegym.model.Post;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IRepository extends JpaRepository<Post, Long> {
}
