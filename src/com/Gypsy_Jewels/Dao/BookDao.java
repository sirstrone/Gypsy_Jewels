package com.Gypsy_Jewels.Dao;
import java.sql.SQLException;
import java.util.List;


import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.Gypsy_Jewels.domain.Book;
import com.Gypsy_Jewels.util.JdbcUtil;
public class BookDao {
    public List <Book> findAllBook() {
        QueryRunner qr = new QueryRunner(JdbcUtil.getDataSource());
        String sql = "select * from Book";
        List <Book> allBook = null;
        try {
            allBook = qr.query(sql, new BeanListHandler<Book>(Book.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return allBook;

    }
}
