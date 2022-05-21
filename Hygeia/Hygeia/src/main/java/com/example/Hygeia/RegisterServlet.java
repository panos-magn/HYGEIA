package com.example.Hygeia;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/registerSer")
public class RegisterServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        doGet(request, response);

        //PrintWriter out = response.getWriter();

        String name= request.getParameter("name");
        String email= request.getParameter("email");
        Date bdate= Date.valueOf(request.getParameter("bdate"));
        String amka= request.getParameter("amka");
        String pass= request.getParameter("pass");



        try {

            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/HygeiaDB", "postgres", "1234");



            String query="Insert into client_account(last_name, email, birthday, amka, password) values (?,?,?,?,?);";
            PreparedStatement pstmt=con.prepareStatement(query);

            pstmt.setString(1,name);
            pstmt.setString(2,email);
            pstmt.setDate(3,bdate);
            pstmt.setString(4,amka);
            pstmt.setString(5,pass);

            int x=pstmt.executeUpdate();
            if(x==1)
            {
                RequestDispatcher rd=request.getRequestDispatcher("select.jsp");
                rd.forward(request ,response);
            }

            con.close();
        }catch (Exception e) {
            e.printStackTrace();
        }

    }
}
