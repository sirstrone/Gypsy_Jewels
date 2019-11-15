package com.Gypsy_Jewels.web;

import com.Gypsy_Jewels.domain.User;
import com.Gypsy_Jewels.util.JdbcUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.Gypsy_Jewels.domain.flower;
import com.Gypsy_Jewels.service.flowerservice;
import com.Gypsy_Jewels.util.JdbcUtil;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
     */
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        //1.获取用户名和密码
        String name = request.getParameter("username");
        String pwd = request.getParameter("password");
        User user = null;

        QueryRunner qr = new QueryRunner(JdbcUtil.getDataSource());
        String sql = "select * from user where username=? and password = ?";
        try {
            user = qr.query(sql, new BeanHandler<User>(User.class), name, pwd);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        //查询花束类型

        flowerservice flowerService = new flowerservice();
        List<flower> allflower  = flowerService.findAllflower();


        //如果有值
        if (user != null) {
            response.getWriter().write("登录成功");
            //把登陆用户保存起来
            HttpSession session = request.getSession();
            session.setAttribute("user", user); //传递user对象
            session.setAttribute("allflower", allflower); //传递 flower list
            response.setHeader("refresh", "1;url=/Gypsy_Jewels/index.jsp");
        } else {
            String exit = request.getParameter("exit");
            if (exit == null) {
                response.getWriter().write("登录失败");
                response.setHeader("refresh", "1;url=/Gypsy_Jewels/login.jsp");
            } else {
                response.setHeader("refresh", "1;url=/Gypsy_Jewels/index.jsp");
            }

        }

    }

}

