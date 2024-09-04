<?php

$db = new PDO("mysql:host=localhost; dbname=fitness_sube_kds; charset=utf8", 'root' , '');

$query=$db->query('SELECT * FROM t_musteri_sayisi');
$query1=$db->query('SELECT * FROM aylik_gelir1');
$query2=$db->query('SELECT * FROM aylik_gelir2');
$query3=$db->query('SELECT * FROM aylik_gelir3');
?>

<!DOCTYPE html >

<html lang="turkish">

<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>FITNESS SUBE KDS</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link href="default.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <div id="outer">
        <div id="header">
            <h1><a href="#">FITNESS SALONU KDS</a></h1>
            <h2>Yönetici Paneli</h2>
        </div>
        <div id="menu">
            <ul>
                <li class="first"><a href="index.php">ANASAYFA</a></li>
                <li><a href="tablolar.php">TABLOLAR</a></li>
                <li><a href="sube.php">ŞUBE</a></li>
                <li><a href="musteri.php">MÜŞTERİ</a></li>
                <li><a href="grafik.php">GRAFİK</a></li>
                <li><a href="ekipman.php">EKİPMAN</a></li>
                <li><a href="gelecek.php">GELECEK 3 AY PLANLAMASI</a></li>
                <li><a href="giris.php">ÇIKIŞ</a></li>
            </ul>
        </div></br>
        <div id="content">
                <div id="secondContent" style="width:265px"></br></br>
                    <h3>GRAFİKLER</h3>
                    <ul>
                        <li><a href="grafiksube.php">ŞUBE GRAFİĞİ</a></li></br>
                        <li><a href="grafikgelir.php">GELİR GRAFİĞİ</a></li>
                    </ul>
                </div>
                <div id="firstContent" style="width:713px">
                  
                  <h2 align="center">Bilgilendirme</h2>
                    
                    <h3 align="center">Grafiklere sol taraftaki sayfalardan ulaşabilirsiniz.</h3>
                    
                  
                </div>
            
            
            <div class="clear"></div>
        </div>
        
    </div>
</body>

</html>