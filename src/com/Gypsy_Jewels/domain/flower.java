package com.Gypsy_Jewels.domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class flower {
    private String id;
    private String name;
    private String language;
    private String popularity;
    private String price;


    @Override
    public String toString() {
        return "flower [name=" + name +  ", language=" + language + ", popularity=" + popularity + ", price=" + price + ",id=" + id +"]";
    }
}