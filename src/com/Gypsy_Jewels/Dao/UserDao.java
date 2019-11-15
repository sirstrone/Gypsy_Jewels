package com.Gypsy_Jewels.Dao;
import java.sql.SQLException;
import java.util.List;

import com.Gypsy_Jewels.service.Userservice;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.Gypsy_Jewels.domain.User;
import com.Gypsy_Jewels.util.JdbcUtil;
public class UserDao {
    public List<User> findAllUser() {
        QueryRunner qr = new QueryRunner(JdbcUtil.getDataSource());
        String sql = "select * from User";
        List <User> allUser = null;
        try {
            allUser = qr.query(sql, new BeanListHandler<User>(User.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return allUser;

    }
}
