package com.codegym.model;

import javax.persistence.*;

@Entity
@Table(name = "MyImages")
public class MyImage {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String author;
    private String feedBack;
    private Long rating;
    private Long numOfLike;

    public MyImage() {

    }

    public MyImage(Long id, String author, String feedBack, Long rating, Long like) {
        this.id = id;
        this.author = author;
        this.feedBack = feedBack;
        this.rating = rating;
        this.numOfLike = like;
    }

    @Override
    public String toString() {
        return "MyImage{" +
                "id=" + id +
                ", author='" + author + '\'' +
                ", feedBack='" + feedBack + '\'' +
                ", rating=" + rating +
                ", like=" + numOfLike +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getFeedBack() {
        return feedBack;
    }

    public void setFeedBack(String feedBack) {
        this.feedBack = feedBack;
    }

    public Long getRating() {
        return rating;
    }

    public void setRating(Long rating) {
        this.rating = rating;
    }

    public Long getNumOfLike() {
        return numOfLike;
    }

    public void setNumOfLike(Long like) {
        this.numOfLike = like;
    }
}
