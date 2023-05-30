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
        //1. Utwórz tablice z 5 elementami
        $liczby=[1,5,6,10,-10];
        //2. Wypisz ostatni element tablicy
        echo "<p>$liczby[4]</p>";
        //3. Wypisz wszystkie liczby większe od zera, oddziel spacjami, użyj foreach
        echo "<p>";

        foreach($liczby as $value){
            if($value>0){
                echo "$value";
            }
        }
        echo "</p>";
        //4. Utwórz tabele asocjacyjne $jan, $ewa przechowywujące przedmiot ocena - (klucze to przedmiot i ocena), przypisz dowolne wartości
        $jan=[
            "przedmiot"=> "chemia",
            "ocena"=>3
        ];
        $ewa=[
            "przedmiot"=> "j.polski",
            "ocena"=>1
        ];
        //5. Wypisz $jan w postaci: "Jan ma <przedmiot> <ocena>"
        echo "Jan ma {$jan['przedmiot']} {$jan['ocena']}";
        //6. Utwórz tablice $klasa, której elementami będzie $jan i $ewa
        $klasa=[
            $jan,
            $ewa 
        ];
        //7. Wypisz elementy $klasa w postaci tabeli z nagłówkami
        echo "<table border='1'>";
        echo "<tr><th>Przedmiot</th><th>Ocena</th></tr>";

        foreach($klasa as $value){
            echo "<tr>";
            echo "<td>{$value['przedmiot']}</td> <td>{$value['ocena']}</td>";
            echo "</tr>";
        }

        echo "</table>";
    ?>
</body>
</html>