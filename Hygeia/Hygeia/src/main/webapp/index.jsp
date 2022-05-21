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
        <h1><b>HYGEIA</b></h1>
        <p>Καλώς ήρθατε στο  <span class="w3-tag" style="background-color:#F5BD2C">HYGEIA</span></p>
    </header>

    <!-- Grid -->
    <div class="w3-row">

        <div class="w3-container ">
            <form class="w3-container w3-card-4 w3-center w3-white" style="width:30%" action="servlet1" method="post">

                <div class="w3-container">
                    <h3><b>Σύνδεση</b></h3>
                </div>

                <p>
                    <input class="w3-input  w3-round-xxlarge w3-border" type="text" name="username" required maxlength="11">
                    <label>Α.Μ.Κ.Α.</label></p>
                <p>
                    <input class="w3-input  w3-round-xxlarge w3-border" type="password" name="userpass"required>
                    <label>Κωδικός</label></p>

                <p>
                    <button class="w3-button w3-section w3-ripple w3-round-xxlarge" style="background-color:#F5BD2C; color:white"  type="submit" value="login"> Σύνδεση </button></p>
            </form>

            <p>
            <form action="register.jsp" class="w3-center" style="width:30%">.
                <button class="w3-button w3-section w3-ripple w3-round-xxlarge"style="background-color:#F5BD2C; color:white"> Εγγραφή </button> </p>
            </form>

            <p>* Η χρήση του Α.Μ.Κ.Α είναι υποχρεωτική για την είσοδό σας.</p>
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
