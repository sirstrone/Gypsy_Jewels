package com.Gypsy_Jewels.web;


import com.Gypsy_Jewels.domain.AdminUser;
import com.Gypsy_Jewels.util.JdbcUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/UpdateBookServlet")
public class UpdateBookServlet extends HttpServlet {
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

        String uid = request.getParameter("uid");

        QueryRunner queryRunner = new QueryRunner(JdbcUtil.getDataSource());
        String sql ="update Book set state=? where uid=?";
        try {
            queryRunner.update(sql,1,uid);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        //返回管理界面
        request.getRequestDispatcher("/BookmanagementServlet?id="+adminuserid).forward(request,response);

    }

}

