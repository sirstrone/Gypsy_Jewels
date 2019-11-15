package com.Gypsy_Jewels.domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class AdminUser {
    private String id ;
    private String username;
    private String password;
    private String level;

    @Override
    public String toString() {
        return "AdminUser [id=" + id + ", username=" + username + ", password=" + password + ", level=" + level  + "]";
    }
}
