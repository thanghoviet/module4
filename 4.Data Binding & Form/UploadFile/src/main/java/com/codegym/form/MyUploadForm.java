package com.codegym.form;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import java.util.Arrays;

public class MyUploadForm {

    private String description;

    // Upload files.

    private CommonsMultipartFile[] fileDatas;

    public String getDescription() {

        return description;

    }

    public void setDescription(String description) {

        this.description = description;

    }

    public CommonsMultipartFile[] getFileDatas() {

        return fileDatas;

    }

    public void setFileDatas(CommonsMultipartFile[] fileDatas) {

        this.fileDatas = fileDatas;

    }

    @Override
    public String toString() {
        return "MyUploadForm{" +
                "description='" + description + '\'' +
                ", fileDatas=" + Arrays.toString(fileDatas) +
                '}';
    }
}