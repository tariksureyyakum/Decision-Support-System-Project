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
 
        $sorgu=$db->prepare('SELECT * FROM balcova_musterileri');
        $sorgu->execute();
        $balcova_musterileri=$sorgu-> fetchAll(PDO::FETCH_OBJ);//object olarak verilerimizi çekiyoruz.
  
        ?>
        <div id="content">
                <div id="secondContent" style="width:350px"></br></br>
                    <h3>ŞUBE</h3>
                    <ul>
                        <li><a href="subeekle.php">ŞUBE EKLE</a></li></br>
                        <li><a href="balsub.php">BALÇOVA ŞUBESİ</a></li></br>
                        <li><a href="baysub.php">BAYRAKLI ŞUBESİ</a></li></br>
                        <li><a href="gazsub.php">GAZİEMİR ŞUBESİ</a></li></br>
                        <li><a href="guzsub.php">GÜZELBAHÇE ŞUBESİ</a></li></br>
                        <li><a href="karasub.php">KARABAĞLAR ŞUBESİ</a></li></br>
                        <li><a href="ksksub.php">KARŞIYAKA ŞUBESİ</a></li></br>
                        <li><a href="konsub.php">KONAK ŞUBESİ</a></li></br>
                        <li><a href="narsub.php">NARLIDERE ŞUBESİ</a></li></br>
                    </ul>
                </div>
                <div id="firstContent" style="width:713px">
                    
                    <h3>BALÇOVA ŞUBESİ</h3>
                    <table table border="5" cellpadding="2">
                    <tr>
                        <td>Müşteri Ad</td>
                        <td>Müşteri Soyad</td>
                        <td>Şube Ad</td>
                        </tr>
                        
                        <?php
                        foreach($balcova_musterileri as $bm){?>
                        
                            <tr>
                            <td><?= $bm->m_ad ?></td>
                            <td><?= $bm->m_soyad ?></td>
                            <td><?= $bm->sube_ad ?></td>
                    </tr>
                  
                        <?php } ?>
                    </table>
                </div>
                
            <div class="clear"></div>
        </div>
        
    </div>
</body>

</html>