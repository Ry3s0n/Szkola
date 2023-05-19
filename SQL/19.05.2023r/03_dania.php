<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
        $db = new mysqli('localhost','root','','BG_4EP');
    ?>

<form action="./03_zmiana_dania.php" method="POST">
<label for="dish">Wybierz danie do zmiany: </label>
    <select name="dish" id="dish">
        <!-- <option value="1">Gaspacho - 20zł</option>
        <option value="2">Krem z warzyw - 25zł</option> -->
        <?php
        $sql = "select id,nazwa,cena from dania;";
        $result=$db->query($sql);
        while($row=$result->fetch_assoc()){
            $id =$row['id'];
            $nazwa = $row['nazwa'];
            $cena = $row['cena'];
            echo "<option value=`$id`>$nazwa - $cena zl </option>";
        }
    ?>
    </select>
</form>


    <?php

        $db -> close();
        
    ?>
</body>
</html>