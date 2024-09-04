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
 
        $sorgu=$db->prepare('SELECT * FROM ekipman');
        $sorgu->execute();
        $ekipman=$sorgu-> fetchAll(PDO::FETCH_OBJ);//object olarak verilerimizi çekiyoruz.
  
        ?>
        <div id="content">
                <div id="secondContent" style="width:350px"></br></br>
                    <h3>ŞUBELER VE EKİPMANLARI</h3>
                    <ul>
                        <li><a href="ekipbal.php">BALÇOVA ŞUBESİ EKİPMANLARI</a></li></br>
                        <li><a href="ekipbay.php">BAYRAKLI ŞUBESİ EKİPMANLARI</a></li></br>
                        <li><a href="ekipgaz.php">GAZİEMİR ŞUBESİ EKİPMANLARI</a></li></br>
                        <li><a href="ekipguz.php">GÜZELBAHÇE ŞUBESİ EKİPMANLARI</a></li></br>
                        <li><a href="ekipkara.php">KARABAĞLAR ŞUBESİ EKİPMANLARI</a></li></br>
                        <li><a href="ekipksk.php">KARŞIYAKA ŞUBESİ EKİPMANLARI</a></li></br>
                        <li><a href="ekipkon.php">KONAK ŞUBESİ EKİPMANLARI</a></li></br>
                        <li><a href="ekipnarli.php">NARLIDERE ŞUBESİ EKİPMANLARI</a></li></br>
                    </ul>
                </div>
                <div id="firstContent" style="width:713px">

                <h3>EKİPMANLAR</h3>
                    <table table border="5" cellpadding="2">
                    <tr>
                    <td>Ekipman ID</td>
                    <td>Ekipman Ad</td>
                    </tr>
              
                    <?php
                    foreach($ekipman as $ek){?>
                    
                        <tr>
                        <td><?= $ek->ekipman_id ?></td>
                        <td><?= $ek->ekipman_ad ?></td>
                        </tr>
                        
                    <?php } ?>
                    </table>
                </div>
            
            
            <div class="clear"></div>
        </div>
        
    </div>
</body>

</html>