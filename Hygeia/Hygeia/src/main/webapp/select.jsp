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
      <% String AMKA=request.getParameter("username");
        session.setAttribute("amka",AMKA);
        out.println("Α.Μ.Κ.Α.: "+AMKA);%>
    </button><br>
    <h1><b>HYGEIA</b></h1>
    <p>Καλώς ήρθατε στο  <span class="w3-tag" style="background-color:#F5BD2C">HYGEIA</span></p>
  </header>
  <br><br>
  <!-- Grid -->
  <div class="w3-row">
    <!-- Προσθήκη Ραντεβού -->
    <div class="w3-col l6 s12">

      <div class="w3-card-4 w3-margin w3-white">
        <div class="w3-container">
          <h3><b>Προσθήκη Ραντεβού</b></h3>
        </div>

        <div class="w3-container">
          <p>Πατήστε Προσθήκη Ραντεβού για επιλογή γιατρού, ειδικότητας και περιοχής.</p><br>
          <div class="w3-row">
            <div class="w3-col m8 s12">
              <form action="doctors.jsp" >
                <p><button class="w3-button w3-padding-large w3-text-white w3-border  w3-round-xxlarge" style="background-color:#F5BD2C"><b>Προσθήκη Ραντεβού</b></button></p>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- END Προσθήκη Ραντεβού -->
    </div>

    <!-- Προβολή Ραντεβού -->
    <div class="w3-col l6 s12">

      <div class="w3-card-4 w3-margin w3-white">
        <div class="w3-container">
          <h3><b>Προβολή Ραντεβού</b></h3>
        </div>

        <div class="w3-container">
          <p>Πατήστε Προβολή Ραντεβού για να δείτε τα ραντεβού της εβδομάδας/μήνα ή για να διαγράψετε το προγρμματισμένο ραντεβού σας.</p>
          <div class="w3-row">
            <div class="w3-col m8 s12">

              <form action="apointments.jsp" >
                <p ><button class="w3-button w3-padding-large w3-text-white w3-border  w3-round-xxlarge" style="background-color:#F5BD2C"><b>Προβολή Ραντεβού</b></button></p>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- END Προβολή Ραντεβού -->
    </div>


    <!-- END GRID -->
  </div><br>

  <!-- END w3-content -->
</div>
<br><br><br><br><br>
<!-- Footer -->
<footer class="w3-container w3-dark-grey w3-padding-32 w3-margin-top">
  <p>Powered by Thoo</p>
</footer>

</body>
</html>

