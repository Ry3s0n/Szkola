<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Imiona i nazwiska pracowników</h1>
    <!-- 1. Utwórz bazę danych inicjały_raporty i wykonaj w niej plik baza.sql 

    2. Wyświetl wszystkie nazwy dań (pole nazwa, tabela dania), każdy jako osobny element listy numerowanej

    3. Wyświetl imiona i nazwiska pracowników w postaci listy wypunktowanej w formacie: "[imię] [nazwisko]"  (pola imie, nazwisko z tabeli pracownicy)

    4. wyświetl markę model, kolor i stan samochodów w postaci listy wypunktowanej w formacie: "[kolor] [marka] [model], stan [stan]" (pola marka, model, kolor, stan z tabeli samochody) -->
    <?php
    //łączenie z bazą danych
    $link = new mysqli('localhost','root','','4eP');

     //wykonanie zapytania

     $sql = "SELECT imie, nazwisko FROM pracownicy;";
     $result =  $link->query($sql);
    //wyświetlenie wynikó zapytania
        echo "<ul>";
        while ( $row = $result->fetch_array()){
            $imie = $row['imie'];
            $nazwisko = $row['nazwisko'];
            echo "<li> $imie $nazwisko </li>";
        }
        echo "</ul>";

     //zamknięcie połączenia z bazą danych) -->
     $link->close();
     ?>
</body>
</html>