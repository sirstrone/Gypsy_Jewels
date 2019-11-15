package com.Gypsy_Jewels.service;

import com.Gypsy_Jewels.Dao.UserDao;
import com.Gypsy_Jewels.domain.User;

import java.util.List;

public class Userservice {

    public List <User> findUserDao(){
        UserDao findUserDao = new UserDao();

        return findUserDao.findAllUser();

    }
}
