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

import com.Gypsy_Jewels.domain.AdminUser;
import com.Gypsy_Jewels.domain.flower;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.dbutils.QueryRunner;


import com.Gypsy_Jewels.util.JdbcUtil;
import org.apache.commons.dbutils.handlers.BeanHandler;

@WebServlet("/UpdateCaroServlet")
public class UpdateCaroServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //只适用于post 设置请求编码
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //获取ID

        //传递UserID
        String adminuserid = request.getParameter("adminuserid");
        AdminUser adminUser = null;
        QueryRunner qr = new QueryRunner(JdbcUtil.getDataSource());
        String sql20 = "select * from adminuser where id=?";
        try {
            adminUser = qr.query(sql20, new BeanHandler<AdminUser>(AdminUser.class), adminuserid);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("adminuser", adminUser); //传递adminUser对象
        //id传送结束

        flower flower = new flower();
        Map<String, String[]> parameterMap = request.getParameterMap();
        try {
            BeanUtils.populate(flower, parameterMap);
        } catch (IllegalAccessException | InvocationTargetException e) {

            e.printStackTrace();
        }
        String id = request.getParameter("id");

        QueryRunner queryRunner = new QueryRunner(JdbcUtil.getDataSource());
        String sql ="update flower set name=?,language=?,popularity=?,price=? where id=?";
        try {
            queryRunner.update(sql, flower.getName(),flower.getLanguage(), flower.getPopularity(), flower.getPrice(),id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        //返回管理界面
        request.getRequestDispatcher("/CargomanagementServlet?id="+adminuserid).forward(request,response);

    }

}


