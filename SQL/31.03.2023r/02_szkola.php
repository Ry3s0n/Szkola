<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="02_szkola.css" >
    <title>Document</title>
</head>
<body>
    <h1>uczniowie</h1>
    <section>
        <h1>Lista uczniów</h1>
        <table>
            <?php
            $db = new mysqli('localhost','root','','szkola');
            $sql = "SELECT * from uczen";
            $result = $db ->query($sql);
            while ($row = $result ->fetch_row()){
               echo "<tr>";
                foreach ($row as $data){
                    echo "<td>$data</td>";

                }
               echo "</tr>";
            
            }
            $db -> close();
            ?>
        </table>
    </section>
    <section>
    <h2>Aktualizacja</h2>
    <form action="aktualizacja.php" method="post">
    <label for="id-ucznia">ID Ucznia:</label>
    <input type="number" id="id-ucznia" name="id-ucznia" require>
    
    <button type="submit">Wyślij</button>
    </form>
    </section>
    <section>
    <h2>Usuwanie</h2>
    <form action="usuwanie.php" method="post">
    <label for="id-ucznia">ID Ucznia:</label>
    <input type="number" id="id-ucznia" name="id-ucznia">
    
    <button type="submit">Wyślij</button>
    </form>
</section>
</body>
</html>