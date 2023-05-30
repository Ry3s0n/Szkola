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
        if(!$file = fopen('./wiersz01.txt', 'r')){
            echo "Nie udało się otworzyć pliku";
        }else{
            $read = fgets($file);
            echo "<h1>$read</h1>";

            $read = fgetc($file);
            echo "<h2>$read</h2>";

            echo "<p>";
            while(!feof($file)){
                $read = fgetc($file);
        
                echo $nl2br($read);

            }
                echo "</p>";
            fclose($file);
        }
        
    ?>
</body>
</html>