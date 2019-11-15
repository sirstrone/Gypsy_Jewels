package com.Gypsy_Jewels.web;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Gypsy_Jewels.domain.Book;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.dbutils.QueryRunner;


import com.Gypsy_Jewels.util.JdbcUtil;

@WebServlet("/BookServlet")
public class BookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //只适用于post 设置请求编码
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //获取UID
        String id = request.getParameter("uid");
        /**
         * 接受所有参数
         */

        Book book = new Book();
        Map<String, String[]> parameterMap = request.getParameterMap();
        try {
            BeanUtils.populate(book, parameterMap);
        } catch (IllegalAccessException | InvocationTargetException e) {

            e.printStackTrace();
        }

        String uid = UUID.randomUUID().toString();

        QueryRunner queryRunner = new QueryRunner(JdbcUtil.getDataSource());
        String sql = "insert into book values(?,?,?,?,?,?,?,?)";
        try {
            queryRunner.update(sql, uid, id, book.getName(), book.getPhone(), book.getTime(),book.getEmail(),book.getMessage(),0);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        //跳转到登陆页面
        response.setHeader("refresh", "3;url=/Gypsy_Jewels/index.jsp");

    }

}

