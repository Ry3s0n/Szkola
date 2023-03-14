<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<body>
    <table>
        <tr>
            <th>L.p</th>
            <th>Gatunek</th>
            <th>Występowanie</th>
            </tr>
            <?php
                $link = new mysqli('localhost','root','','wedkowanie');

                $sql = "SELECT id,nazwa,wystepowanie FROM ryby WHERE styl_zycia=1";
                $result = $link -> query($sql);
                echo "<tr>";
                while($row = $result->fetch_assoc()){
                    foreach($row as $pole){
                        echo "<td> $pole </td>";
                    }
                }

                echo "</tr>";
                $link -> close();
            ?>
    </table>
</body>
</html>