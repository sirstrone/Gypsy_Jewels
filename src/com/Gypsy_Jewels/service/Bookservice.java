package com.Gypsy_Jewels.service;


import com.Gypsy_Jewels.Dao.BookDao;
import com.Gypsy_Jewels.domain.Book;

import java.util.List;

public class Bookservice {

    public List <Book> findBookDao(){
        BookDao findBookDao = new BookDao();

        return findBookDao.findAllBook();

    }
}

