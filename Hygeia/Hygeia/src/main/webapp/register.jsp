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
        <p>Κάντε την εγγραφή σας στο  <span class="w3-tag" style="background-color:#F5BD2C">HYGEIA</span></p>
    </header>

    <!-- Grid -->
    <div class="w3-row">
        <!-- Προσθήκη Ραντεβού -->
        <div class="w3-col l6 s12">

            <div class="w3-card-4 w3-margin w3-white">
                <div class="w3-container">
                    <h3><b>Εγγραφή</b></h3>
                </div>
                <form class="w3-container w3-card w3-white" action="registerSer" method="post">
                    <p>
                        <label>Α.Μ.Κ.Α</label>
                        <input class="w3-input w3-border w3-round-xxlarge" name="amka" type="text" required maxlength="11">
                    </p>
                    <p>
                        <label>Ονοματεπώνυμο</label>
                        <input class="w3-input w3-border w3-round-xxlarge" name="name" type="text" required>
                    </p>
                    <p>
                        <label>Ημερομηνία γέννησης</label>
                        <input class="w3-input w3-border w3-round-xxlarge" name="bdate" type="date" required>
                    </p>
                    <p>
                        <label>Κωδικός Πρόσβασης</label>
                        <input class="w3-input w3-border w3-round-xxlarge" name="pass" type="password" required>
                    </p>
                    <p>
                        <label>E-mail επικοινωνίας</label>
                        <input class="w3-input w3-border w3-round-xxlarge" name="email" type="text" required>
                    </p>

                    <div class="w3-col m8 s12">
                        <p ><button class="w3-button w3-padding-large w3-text-white w3-border  w3-round-xxlarge" style="background-color:#F5BD2C" type="submit"><b>Εγγραφή</b></button></p>
                    </div>
                </form>
                <div class="w3-container">

                </div>
            </div>
            <!-- END Προσθήκη Ραντεβού -->
        </div>

        <!-- Προβολή Ραντεβού -->
        <div class="w3-col l6 s12">

            <div class="w3-card-4 w3-margin w3-white">
                <div class="w3-container">
                    <h3><b>Νέο Μέλος</b></h3>
                </div>

                <div class="w3-container">
                    <p>
                        Πραγματοποιώντας την εγγραφή σας στο <span class="w3-tag" style="background-color:#F5BD2C">HYGEIA</span> <br><br>

                        Μπορείτε να κλείσετε άμεσα το ραντεβού με τον γιατρό σας. <br><br>

                        Μπορείτε να διαλέξετε ανάμεσα σε χιλίαδες γιατρούς απο όλες τις ειδικότητες τον γιατρό που βρίσκεται πιο κοντά στο σπίτι σας. <br><br>

                        Μπορείτε να ακυρώσετε το ραντεβού χωρίς καμία δέσμευση. <br><br>

                        Με την χρήση ημερολογίου της εφαρμογής μπορείτε να δείτε τα προγραμματισμένα ραντεβού σας.<br>
                    </p>
                </div>
            </div>
            <!-- END Προβολή Ραντεβού -->
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
