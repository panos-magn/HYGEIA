<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<title>Hygeia</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>
    body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}

</style>
<body class="w3-light-grey w3-animate-left">

<div class="w3-content" style="max-width:1400px">

    <!-- Header -->
    <header class="w3-container w3-center w3-padding-32">
        <form action="index.jsp">
            <button class="w3-button w3-padding-large w3-text-white w3-border w3-round-xxlarge w3-right" style="background-color:#F5BD2C">Αποσύνδεση</button>
        </form>
        <button class="w3-button w3-padding-large w3-text-white w3-border w3-round-xxlarge w3-right" style="background-color:#F5BD2C">
            <% out.println("Α.Μ.Κ.Α.: "+ session.getAttribute("amka"));%>
        </button><br>

        <h1><b>HYGEIA</b></h1>
        <p>Κλείστε το ραντεβού σας στο <span class="w3-tag" style="background-color:#F5BD2C">HYGEIA</span></p>
    </header>

    <!-- Grid -->
    <div class="w3-row">
        <!-- Προσθήκη Ραντεβού -->
        <div class="w3-col l6 s12">

            <div class="w3-card w3-margin w3-white">
                <div class="w3-container">
                    <h3><b>Κλείστε το ραντεβού σας</b></h3>
                </div>
                <form class="w3-container w3-card w3-white " action="apointServ" method="post">
                    <br>

                    <select class="w3-select w3-border w3-round-xxlarge" name="option">
                        <option value="" disabled selected>Ειδικότητα</option>
                        <%
                            ResultSet resultset =null;

                            try {
                                Class.forName("org.postgresql.Driver");
                                Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/HygeiaDB", "postgres", "1234");

                                Statement statement = con.createStatement();

                                resultset = statement.executeQuery("select specialization_name from specialization");

                                con.close();
                            }catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                        <%  while(resultset.next()){ %>
                        <option  name="spec"><%= resultset.getString(1)%></option>
                        <% } %>
                    </select><br><br>
                    <select class="w3-select w3-border w3-round-xxlarge" name="option">
                        <option value="" disabled selected>Περιοχή</option>
                        <%
                            ResultSet resultset2 =null;

                            try {
                                Class.forName("org.postgresql.Driver");
                                Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/HygeiaDB", "postgres", "1234");

                                Statement statement = con.createStatement();

                                resultset2 = statement.executeQuery("select city from office");

                                con.close();
                            }catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                        <%  while(resultset2.next()){ %>
                        <option name="city"><%= resultset2.getString(1)%></option>
                        <% } %>
                    </select><br><br>
                    <select class="w3-select w3-border w3-round-xxlarge" name="option">
                        <option value="" disabled selected>Γιατρός</option>
                        <%
                            ResultSet resultset3 =null;

                            try {
                                Class.forName("org.postgresql.Driver");
                                Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/HygeiaDB", "postgres", "1234");

                                Statement statement = con.createStatement();

                                resultset3 = statement.executeQuery("select last_name from doctor");

                                con.close();
                            }catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                        <%  while(resultset3.next()){ %>
                        <option name="doctor"><%= resultset3.getString(1)%></option>
                        <% } %>
                    </select><br><br>
                    <select class="w3-select w3-border w3-round-xxlarge" name="option">
                        <option value="" disabled selected>Ημερομηνία</option>
                        <%
                            ResultSet resultset4 =null;

                            try {
                                Class.forName("org.postgresql.Driver");
                                Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/HygeiaDB", "postgres", "1234");

                                Statement statement = con.createStatement();

                                resultset4 = statement.executeQuery("select day_of_week from office_doctor_availability where is_available='Y'");

                                con.close();
                            }catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                        <%  while(resultset4.next()){ %>
                        <option name="date"><%= resultset4.getString(1)%></option>
                        <% } %>
                    </select><br><br>
                    <select class="w3-select w3-border w3-round-xxlarge" name="option">
                        <option value="" disabled selected>Ώρα</option>
                        <%
                            ResultSet resultset5 =null;

                            try {
                                Class.forName("org.postgresql.Driver");
                                Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/HygeiaDB", "postgres", "1234");

                                Statement statement = con.createStatement();

                                resultset5 = statement.executeQuery("select start_time from office_doctor_availability where is_available='Y'");

                                con.close();
                            }catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                        <%  while(resultset5.next()){ %>
                        <option name="time"><%= resultset5.getString(1)%></option>
                        <% } %>
                    </select><br><br>

                    <div class="w3-col m8 s12">
                        <p ><button class="w3-button w3-padding-large w3-text-white w3-border  w3-round-xxlarge" style="background-color:#F5BD2C"><b>Προσθήκη</b></button></p>
                    </div>
                </form>
                <div class="w3-container">

                </div>
            </div>
            <!-- END Προσθήκη Ραντεβού -->
        </div>

        <!-- Οδηγίες -->
        <div class="w3-col l6 s12">

            <div class="w3-card-4 w3-margin w3-white">
                <div class="w3-container">
                    <h3><b>Οδηγίες</b></h3>
                </div>

                <div class="w3-container">
                    <p>
                        Επιλέξτε την ειδκότητα που χρειάζεστε. <br><br>

                        Δείτε σε ποιές περιοχές είναι διαθέσιμη. <br><br>

                        Επιλέξτε τον γιατρό που επιθυμείτε. <br><br>

                        Δείτε τις διαθέσιμες ημερομηνίες και ώρες και κλείστε το ραντεβού σας. <br>
                    </p>
                </div>
            </div>
            <!-- END Οδηγίες -->
        </div>
        <!-- END GRID -->
    </div><br>

    <!-- END w3-content -->
</div>

<!-- Footer -->
<footer class="w3-container w3-dark-grey w3-padding-32 w3-margin-top">
    <p>Powered by Thoo</p>
</footer>

</body>
</html>
