package com.example.Hygeia;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet("/apointServ")
public class AddApointServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        doGet(request, response);

        //PrintWriter out = response.getWriter();

        //String spec= request.getParameter("spec");
        String city= request.getParameter("city");
        //String doctor= request.getParameter("doctor");
        Date date= Date.valueOf(request.getParameter("date"));
        Time time= Time.valueOf(request.getParameter("time"));


        String amka = request.getParameter("amka");



        try {

            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/HygeiaDB", "postgres", "1234");



            String query="Insert into appointment(user_account_id,office_id,probable_start_time,appointment_status_id, appointment_taken_date) values (?,?,?,?,?);";
            PreparedStatement pstmt=con.prepareStatement(query);

            PreparedStatement ps=con.prepareStatement("select doctor_id from office where city = ?");
            ps.setString(1,city);

            PreparedStatement ps2=con.prepareStatement("select id from client_account where amka = ?");
            ps2.setString(1,amka);

            pstmt.setString(1, String.valueOf(ps2));
            pstmt.setString(2, String.valueOf(ps));
            pstmt.setString(4, String.valueOf(1));
            pstmt.setDate(5,date);
            pstmt.setTime(3,time);

            int x=pstmt.executeUpdate();
            if(x==1)
            {
                RequestDispatcher rd=request.getRequestDispatcher("apointments.jsp");
                rd.forward(request ,response);
            }

            con.close();
        }catch (Exception e) {
            e.printStackTrace();
        }

    }
}
