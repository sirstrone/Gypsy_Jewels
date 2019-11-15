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

@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
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

        String isvip1 =request.getParameter("isvip");
        String uid = request.getParameter("uid");
        int isvip = Integer.parseInt(isvip1);
        if(isvip == 1) {
            isvip = 0;
        }
        else {
            isvip = 1;
        }
        QueryRunner queryRunner = new QueryRunner(JdbcUtil.getDataSource());
        String sql ="update User set isvip=? where uid=?";
        try {
            queryRunner.update(sql,isvip,uid);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        //返回管理界面
        request.getRequestDispatcher("/UsermanagementServlet?id="+adminuserid).forward(request,response);

    }

}

