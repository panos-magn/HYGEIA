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

    * {box-sizing: border-box;}
    ul {list-style-type: none;}
    body {font-family: Verdana, sans-serif;}

    .month {
        padding: 70px 25px;
        width: 100%;
        background: #F5BD2C;
        text-align: center;
    }

    .month ul {
        margin: 0;
        padding: 0;
    }

    .month ul li {
        color: white;
        font-size: 20px;
        text-transform: uppercase;
        letter-spacing: 3px;
    }

    .month .prev {
        float: left;
        padding-top: 10px;
    }

    .month .next {
        float: right;
        padding-top: 10px;
    }

    .weekdays {
        margin: 0;
        padding: 10px 0;
        background-color: #ddd;
    }

    .weekdays li {
        display: inline-block;
        width: 13.6%;
        color: #666;
        text-align: center;
    }

    .days {
        padding: 10px 0;
        background: #eee;
        margin: 0;
    }

    .days li {
        list-style-type: none;
        display: inline-block;
        width: 13.6%;
        text-align: center;
        margin-bottom: 5px;
        font-size:12px;
        color: #777;
    }

    .days li .active {
        padding: 5px;
        background: #F5BD2C;
        color: white !important
    }

    /* Add media queries for smaller screens */
    @media screen and (max-width:720px) {
        .weekdays li, .days li {width: 13.1%;}
    }

    @media screen and (max-width: 420px) {
        .weekdays li, .days li {width: 12.5%;}
        .days li .active {padding: 2px;}
    }

    @media screen and (max-width: 290px) {
        .weekdays li, .days li {width: 12.2%;}
    }
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
        <p>Ημερολόγιο <span class="w3-tag" style="background-color:#F5BD2C">HYGEIA</span></p>
    </header>

    <!-- Grid -->
    <div class="w3-row">

        <div class="month">
            <ul>
                <li class="prev">&#10094;</li>
                <li class="next">&#10095;</li>
                <li>
                    Αυγουστος<br>
                    <span style="font-size:18px">2021</span>
                </li>
            </ul>
        </div>

        <ul class="weekdays">
            <li>Δευτέρα</li>
            <li>Τρίτη</li>
            <li>Τετάρτη</li>
            <li>Πέμπτη</li>
            <li>Παρασκευή</li>
            <li>Σάββατο</li>
            <li>Κυριακή</li>
        </ul>

        <ul class="days">
            <li>1</li>
            <li>2</li>
            <li>3</li>
            <li>4</li>
            <li>5</li>
            <li>6</li>
            <li>7</li>
            <li>8</li>
            <li>9</li>
            <li><span class="active">10</span></li>
            <li>11</li>
            <li>12</li>
            <li>13</li>
            <li>14</li>
            <li>15</li>
            <li>16</li>
            <li>17</li>
            <li>18</li>
            <li>19</li>
            <li>20</li>
            <li>21</li>
            <li>22</li>
            <li>23</li>
            <li>24</li>
            <li>25</li>
            <li>26</li>
            <li>27</li>
            <li>28</li>
            <li>29</li>
            <li>30</li>
            <li>31</li>
        </ul>


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
