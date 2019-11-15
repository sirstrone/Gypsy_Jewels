package com.Gypsy_Jewels.service;

import java.util.List;

import com.Gypsy_Jewels.Dao.flowerDao;
import com.Gypsy_Jewels.domain.flower;

public class flowerservice {

    public List<flower> findAllflower() {
        flowerDao flowerDao = new flowerDao();
        return flowerDao.findAllflower();

    }

}

