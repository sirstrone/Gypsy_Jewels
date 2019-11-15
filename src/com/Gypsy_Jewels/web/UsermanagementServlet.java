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

import com.Gypsy_Jewels.domain.User;
import com.Gypsy_Jewels.service.Userservice;
import com.Gypsy_Jewels.util.JdbcUtil;



@WebServlet("/UsermanagementServlet")
public class UsermanagementServlet  extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
     */
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");


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

        User user = new User();
        Map<String, String[]> parameterMap = request.getParameterMap();
        try {
            BeanUtils.populate(user, parameterMap);
        } catch (IllegalAccessException | InvocationTargetException e) {

            e.printStackTrace();
        }

        Userservice userservice = new Userservice();
        List<User> allUser  = userservice.findUserDao();
        HttpSession session = request.getSession();
        session.setAttribute("allUser", allUser); //传递 User list
        response.setHeader("refresh", "1;url=/Gypsy_Jewels/member_information.jsp");


    }

}


