package com.Gypsy_Jewels.web;


import com.Gypsy_Jewels.domain.AdminUser;
import com.Gypsy_Jewels.domain.User;
import com.Gypsy_Jewels.util.JdbcUtil;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.Gypsy_Jewels.domain.flower;
import com.Gypsy_Jewels.service.flowerservice;
import com.Gypsy_Jewels.util.JdbcUtil;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/CargomanagementServlet")
public class CargomanagementServlet  extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
     */
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        //查询花束类型

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

        flowerservice flowerService = new flowerservice();
        List<flower> allflower  = flowerService.findAllflower();
        HttpSession session = request.getSession();
        session.setAttribute("allflower", allflower); //传递 flower list
        response.setHeader("refresh", "1;url=/Gypsy_Jewels/cargo_information.jsp");


    }

}

