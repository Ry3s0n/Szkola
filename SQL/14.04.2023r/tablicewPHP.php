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
    $pogoda = array('rain', 'sunshine', 'clouds', 'hail', 'sleet', 'snow', 'wind');
    
    echo "We've seen all kinds of weather this month. At the beginning of the month, we had {$pogoda[5]} and {$pogoda[6]}. Then came {$pogoda[1]} with a few {$pogoda[2]} and some {$pogoda[0]}. At least we didn't get any {$pogoda[3]} or {$pogoda[4]}.";

    $inicjaly = array('Jan','Kowalski','Bydgoszcz','Czestochowa');

    echo "<table border='1'>";
    foreach ($inicjaly as $value) {
        echo '<tr><td>$value</td></tr>';
    }
    echo"</table>";

    $numbers = array(1, 2, 45, 66, 22, 87, 88, 90, 92, 100);

foreach ($numbers as $value) {
    if ($value % 2 == 0) {
        echo $value;
    }
}
$fruits = array('strawberry', 'orange', 'apple', 'pineapple');

sort($fruits);

foreach ($fruits as $indeks => $value) {
    echo "<p>fruits[$index] = $value</p>";
}

$ludzie= array(
    array('imie' => 'Jan', 'praca' => 'Budowlaniec'),
    array('imie' => 'Ewa', 'praca' => 'Astronauta'),
    array('imie' => 'Emilia', 'praca' => 'Lekarz'),      
  );

  foreach($ludzie as $value){
    echo "<p>".$value['imie']." to ".$value['praca']."</p>";
  }
//   foreach ($ludzie as $row){
//     echo "<tr><td>{$row['imie]}</td><td>{$row['$praca'])</td></tr>";
//   }


    $tab = [
        'nazwisko' => 'Kowalski',
        'miasto' => 'Mrocza',
        'wiek' => 18
    ];
    echo "<ol>";
    foreach($tab as $data){
        echo "<li>$data</li>";
    }
    echo "</ol>";
    echo "<ul> </ul>";
    echo "<ol>";
    

    echo "</ol>";
    ?>
</body>
</html>