<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Filmoteka</title>
</head>
<body>
    <?php
        $link = new mysqli('localhost','root','','filmoteka');

        $sql = "SELECT tytul FROM filmy WHERE gatunek='SF'";
        $result = $link -> query($sql);
        //a
        echo"<ol>";
        while($row=$result->fetch_array()){
            $tytul = $row['tytul'];
            echo "<li> $tytul </li>";
        }
        echo"</ol>";
        $link -> close();

        //b
        $sql = "SELECT tytul,nazwisko FROM filmy INNER JOIN rezyserzy ON filmy.rezyserID=rezyserzy.IDrezyser;";
        $result = $link -> query(($sql));

        echo"<ul>";
        while($row = $result -> fetch_array()){
            $tytul = $row['tytul'];
            $nazwisko = $row['nazwisko'];
            echo"<li> <b>$tytul </b> $nazwisko</li>";
        }
        echo"<li";

        //c
        $sql = "SELECT filmy.* FROM recenzje INNER JOIN filmy ON recenzje.IDRecenzja WHERE ocena = 4;";
        $result = $link -> query(($sql));
    ?>
</body>
</html>