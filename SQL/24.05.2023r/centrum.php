<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="awaria.php" method="post">
        <p>
            <label for="nrk">NUMER KOMPUTERA</label>
            <input type="number" name="PCnumber" id="PCnumber">
        </p>

        <p>
            <label for="priority">PRIORYTET</label>
            <input type="number" name="priority" id="priority">
        </p>
        <input type="submit" value="Wyślij">
        <input type="reset" value="Wyczyść">

    <?php

    ?>
    </form>
</body>
</html>