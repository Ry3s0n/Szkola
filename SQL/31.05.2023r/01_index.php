<?php
    // Nie ma ciasteczka username i nie ma pola username z formularza

    if(!isset($_COOKIE['username']) && !isset($_GET['username'])){
        include "01_header.html";
        include "01_form.html";
        include "01_footer.html";
    }
    // mamy uzytkownika w formularzu
    else if(isset($_GET['username'])){
        $username = $_GET['username'];
        $setcookie('username',$username,time()+60*60*24*365);
    }else{
        include "01_header.html";
        $username = $_COOKIE['username'];
        echo "<p>Zostałeś rozpoznany jako $username</p>";
        include "01_footer.html";
    }
?>