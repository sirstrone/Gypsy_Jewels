package com.Gypsy_Jewels.web;

import com.Gypsy_Jewels.domain.AdminUser;
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


@WebServlet("/DeleteCargoServlet")
public class DeleteCargoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
     */
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");


        String id = request.getParameter("id");

        QueryRunner queryRunner = new QueryRunner(JdbcUtil.getDataSource());
        String sql ="delete from flower where id=?";
        try {
            queryRunner.update(sql,id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("/CargomanagementServlet").forward(request,response);
    }
}