package com.Gypsy_Jewels.domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class Book {
    private String uid;
    private String id;
    private String name;
    private String phone;
    private String time;
    private String email;
    private String message;
    private String state;
    @Override
    public String toString() {
        return "User [uid=" + uid + "id= " + id + ", name=" + name + ", phone=" + phone + ", time=" + time + " , email=" + email + ",state=" + state +"]";
    }
}


