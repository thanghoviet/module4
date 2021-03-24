package com.codegym.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import java.util.Collection;

@Entity
@Data
public class Tag {
    @Id
    @GeneratedValue
    private Long id;
    private String title;
    private String content;

    @ManyToMany(mappedBy = "tags")
    private Collection<Post> posts;

    @Override
    public String toString() {
        return "Tag{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                '}';
    }
}
