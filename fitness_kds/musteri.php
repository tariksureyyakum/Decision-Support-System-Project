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
 
        $sorgu=$db->prepare('SELECT * FROM musteri');
        $sorgu->execute();
        $musteri=$sorgu-> fetchAll(PDO::FETCH_OBJ);//object olarak verilerimizi çekiyoruz.
        
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
            
                <div id="firstContent" style="width:750px">
                    
                    <h3 align="center">MÜŞTERİLER</h3>
                    <table table border="5" cellpadding="2" style="float:right width:750px">
                    <tr>
                    <td>Müşteri ID</td>
                    <td>Müşteri Ad</td>
                    <td>Müşteri Soyad</td>
                    <td>Müşteri TC No</td>
                    <td>Müşteri Telefon No</td>
                    <td>Müşteri Doğum Tarihi</td>
                    <td>Müşteri Adres</td>
                    </tr>
			 
                    <?php
                    foreach($musteri as $mstr){?>
                    
                        <tr>
                        <td><?= $mstr->m_id ?></td>
                        <td><?= $mstr->m_ad ?></td>
                        <td><?= $mstr->m_soyad ?></td>
                        <td><?= $mstr->m_tcno ?></td>
                        <td><?= $mstr->m_telno ?></td>
                        <td><?= $mstr->m_dogum_tarihi ?></td>
                        <td><?= $mstr->m_adres ?></td>
                        </tr>
                        
                    <?php } ?>
                    </table>
                </div>
           
            
            <div class="clear"></div>
        </div>
        
    </div>
</body>

</html>