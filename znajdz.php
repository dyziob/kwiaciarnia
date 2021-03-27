<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Kwiaty</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
        <div class="baner">
            <h1>Moje kwiaty</h1>
        </div>
        <div class="left">
            <h3>Kwiaty dla Ciebie!</h3>
            <a href="https://www.swiatkwiatow.pl/">Rozpoznaj kwiaty</a><br>

            <a href="znajdz.php">Znajdź kwiaciarnię</a><br>

            <img src="img/gozdzik.jpg" alt="Goździk">
        </div>
        <div class="right">
            <img src="img/gerbera.jpg" alt="Gerbera">
            <img src="img/gozdzik.jpg" alt="Goździk">
            <img src="img/roza.jpg" alt="Róża">
            <p>Podaj miejscowość, w której poszukujesz kwiaciarni</p>
            <form action="znajdz.php" method="post">
                <input type="text" name="edit">
                <input type="submit" name="submit" value="SPRAWDŹ">
            </form>
            <?php
            error_reporting(0);
            $name = $_POST["edit"];
            
                $db = mysqli_connect("localhost", "root", "", "kwiaciarnia");
                $zap = 'SELECT nazwa, ulica FROM kwiaciarnie WHERE miasto="'.$name.'";';
                $wyn = mysqli_query($db, $zap);
                while ($row = mysqli_fetch_row($wyn)) {
                        echo $row[0].', '.$row[1];
                    }
                mysqli_close($db);
            ?>
        </div>
        <div class="footer">

            <h3>Stronę opracował: 01292802473</h3>
        </div>
    
</body>
</html>