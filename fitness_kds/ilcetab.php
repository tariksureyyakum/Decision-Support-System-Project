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
 
        $sorgu=$db->prepare('SELECT * FROM ilce');
        $sorgu->execute();
        $ilce=$sorgu-> fetchAll(PDO::FETCH_OBJ);//object olarak verilerimizi çekiyoruz.
  
        ?>
        <div id="content">
                <div id="secondContent" style="width:350px"></br></br>
                    <h3>TABLOLAR</h3>
                    <ul>
                        <li><a href="ilcetab.php">İLÇE TABLOSU</a></li></br>
                        <li><a href="subetab.php">ŞUBE TABLOSU</a></li></br>
                        <li><a href="gelirtab.php">GELİR TABLOSU</a></li></br>
                    </ul>
                </div>
                <div id="firstContent" style="width:713px">
                    
                    <h3>SPOR SALONU BULUNAN İLÇELER</h3>
                    <table table border="5" cellpadding="2">
                    <tr>
                    <td>İlçe ID</td>
                    <td>İlçe Ad</td>
                    </tr>
              
                    <?php
                    foreach($ilce as $ilc){?>
                    
                        <tr>
                        <td><?= $ilc->ilce_id ?></td>
                        <td><?= $ilc->ilce_ad ?></td>
                        </tr>
                        
                    <?php } ?>
                    </table>
                </div>
            
            
            <div class="clear"></div>
        </div>
        
    </div>
</body>

</html>