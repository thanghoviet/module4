package com.codegym.model;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Data
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String email;

    @Column(nullable = false)
    private String password;

    @Column(nullable = false)
    private String fullName;

    @Column(nullable = false)
    private boolean role;

    @Column(nullable = false)
    private String aboutMe;

    @Column(nullable = false)
    private String image;

    @Column(nullable = false)
    @Temporal(TemporalType.DATE)
    private Date createDate = new Date();

    @Column(nullable = false)
    private Long yearOfBirth;

    @OneToMany(mappedBy = "user",fetch = FetchType.EAGER)
    private List<Blog> blogs;

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", fullName='" + fullName + '\'' +
                ", role=" + role +
                ", aboutMe='" + aboutMe + '\'' +
                ", image='" + image + '\'' +
                ", createDate=" + createDate +
                ", yearOfBirth=" + yearOfBirth +
                '}';
    }
}
