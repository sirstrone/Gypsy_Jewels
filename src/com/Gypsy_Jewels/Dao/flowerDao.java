package com.Gypsy_Jewels.Dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.Gypsy_Jewels.domain.flower;
import com.Gypsy_Jewels.util.JdbcUtil;
public class flowerDao {
    public List<flower> findAllflower() {
        QueryRunner qr = new QueryRunner(JdbcUtil.getDataSource());
        String sql = "select * from flower";
        List<flower> allflower = null;
        try {
            allflower = qr.query(sql, new BeanListHandler<flower>(flower.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return allflower;

    }
}



