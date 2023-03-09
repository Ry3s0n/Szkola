<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js.js" defer></script>
    <title>Document</title>
</head>
<body>
   <h1>Samochody-Informacja</h1>
   <?php
    $link = new myslqli('localhost','root','','4eP');
    $sql = "SELECT kolor,marka,modle,stan FROM samochody";

    $result = $link->query($sql);

    echo'<ul>';

    while($row = $result->fetch_array()){
        $kolor=$row['kolory'];
    }

   ?>
</body>
</html>