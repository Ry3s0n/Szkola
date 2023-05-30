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

    <?php
    if(isset($_POST['disk']) && isset($_POST['price'])){
        $dish = $_POST['dish']; 
        $price = $_POST['price'];
        $sql = "UPDATE dania SET CENA = $price WHERE id $dish";
        $sql2 ="SELECT nazwa FROM dania WHERE id=$dish";
        $result = $db ->query($sql2);
        if($db->query($sql)){
            echo "Została zmieniona cena dania o indentyfikatorzer $dish na $price";
            $result = $db->query($sql2);
            $row = $result->fetch_assoc();
            $nazwa = $row['nazwa']; 
        }else{
            echo "Zmiana ceny nie powodła się";
        }
    }
    else{
        echo "Uzupełnij dane formularza";
    }
    ?>
</body>
</html>