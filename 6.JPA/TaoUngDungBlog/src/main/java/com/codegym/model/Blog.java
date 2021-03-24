package com.codegym.model;

import lombok.Data;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Data
public class Blog {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(nullable = false)
    private String title;
    @Column(nullable = false)
    private String shortContent;
    @Column(nullable = false)
    private String content;
    @Column(nullable = false)
    private String image;
    @Temporal(TemporalType.DATE)
    private Date createDate = new Date();

    @OneToMany(mappedBy = "blog" ,fetch = FetchType.EAGER)
    private List<Comment> comments = new ArrayList<>();

    @ManyToOne
    @JoinColumn(name = "category_id",referencedColumnName = "id")
    private Category category;

    @ManyToOne
    @JoinColumn(name = "user_id",referencedColumnName = "id")
    private User user;

    @Override
    public String toString() {
        return "Blog{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", sortContent='" + shortContent + '\'' +
                ", content='" + content + '\'' +
                ", image='" + image + '\'' +
                ", createDate=" + createDate +
                ", category=" + category +
                ", user=" + user +
                '}';
    }
}
