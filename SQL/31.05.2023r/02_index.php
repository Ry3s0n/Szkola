<?php
    $day = 10;
    // Jeślij ciasteczka nie ma to ustawiamy howmany na 1
    if(!isset($_COOKIE['qwer'])){
        $howmany = 1;
    }
    //w przeciwnym wypadku czytamy ciasteczko do zmienniej howmany i zwiekszamy ja o 1
    else{
        $howmany=(int)$_COOKIE['qwer'];
        $howmany++;
    }

    //ustawiamy ciasteczko według zmiennej howmany
    
    
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
</body>
</html>