<?php

$db = new PDO("mysql:host=localhost; dbname=fitness_sube_kds; charset=utf8", 'root' , '');

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
        <?php
 
        $sorgu=$db->prepare('SELECT * FROM t_musteri_sayisi');
        $sorgu->execute();
        $t_musteri_sayisi=$sorgu-> fetchAll(PDO::FETCH_OBJ);//object olarak verilerimizi çekiyoruz.

        ?>
        <div id="content">
                <div id="secondContent" style="width:350px"></br></br>
                    <h3>MÜŞTERİ</h3>
                    <ul>
                        <li><a href="musteriekle.php">MÜŞTERİ EKLE</a></li></br>
                        <li><a href="musterisubeekle.php">ŞUBEYE MÜŞTERİ EKLE</a></li></br>
                        <li><a href="top_mus_say.php">TOPLAM MÜŞTERİ SAYISI</a></li></br>
                    </ul>
                </div>
                <div id="firstContent" style="width:713px">
                    
                    
                        <h3>Şubelerimize göre toplam müşteri sayımız aşağıdaki tabloda belirtildiği gibidir.
                        <a href="sube.php">Şubelere göz at.</a></h3></br>
                    
                    <h3>Şubelere Göre Toplam Müşteri Sayısı</h3>
                    <table table border="5" cellpadding="2">
                    <tr>
                    <td>Şube Ad</td>
                    <td>Müşteri Sayısı</td>
                    </tr>
                    
                    <?php
       
                    foreach($t_musteri_sayisi as $tms){?>
                    
                    
                        <tr>
                        <td><?= $tms->sube_ad ?></td>
                        <td><?= $tms->musteri_sayisi ?></td>
                        </tr>
                        
                    <?php } ?>
                    </table>
                </div>
            
            
            <div class="clear"></div>
        </div>
        
    </div>
</body>

</html>