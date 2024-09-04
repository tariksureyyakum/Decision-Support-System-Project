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
        
        <div id="content">
            
                <div id="secondContent" style="width:265px"></br></br>
                    <h3>PLANLAMA</h3>
                    <ul>
                        <li><a href="gelecek.php">GENEL PLANLAMALAR</a></li>
                    </ul></br></br></br>

                        <p>
                            FITNESS CLUB olarak aylık şube hedefimiz *40.000* ve üzeri net gelir elde etmektir. Bu hedef şube açılışını desteklemektedir.</br></br>
                            Renklendirilmiş; Bayraklı, Karşıyaka ve Konak Şubeleri görüldüğü üzere hedefimize ulaştığı gözlemlenmektedir.</br></br>
                            Aylık hedeflerine ulaşan Bayraklı, Karşıyaka ve Konak Şubeleri için;</br></br>
                            <a href="subeekle.php">Şube Ekle sayfasına giderek şube açılışını yapabilirsiniz.</a></br></br>
                            Önümüzdeki 3 ay boyunca diğer şubelerimizin net gelirini arttırmasıyla ilgili ekipman arttırılması önerilmektedir.</br></br>
                            <a href="ekipman.php"> Ekipman sayfasından ekipman eklemek istediğiniz şubeye giderek ekipman ekleyebilirsiniz.</a></br></br>
                            
                        </p>

                </div>
                <?php
 
                $sorgu=$db->prepare('SELECT * FROM `toplam_gelir`');
                $sorgu->execute();
                $uzun=$sorgu-> fetchAll(PDO::FETCH_OBJ);//object olarak verilerimizi çekiyoruz.
        
                ?>
                <div id="firstContent" style="width:450px">
                
                    <h3 align="center">AYLIK TOPLAM GELİRLER</h3>
                    
                        <?php
    
                        $sorgu=$db->prepare('SELECT toplam_gelir.sube_ad, GROUP_CONCAT(toplam_gelir.birinci_ay_gelir + toplam_gelir.ikinci_ay_gelir + toplam_gelir.ucuncu_ay_gelir) AS "bal_top_gelir" FROM toplam_gelir,sube WHERE toplam_gelir.sube_ad=sube.sube_ad AND sube.sube_id="11"');
                        $sorgu->execute();
                        $top1=$sorgu-> fetchAll(PDO::FETCH_OBJ);//object olarak verilerimizi çekiyoruz.
                
                        ?>
                        
                        <table table border="5" cellpadding="2" style="width: 450px;">
                        <tr>
                        <td align="center">BALÇOVA ŞUBESİ TOPLAM GELİR</td>
                        
                        </tr>
                
                        <?php
                        foreach($top1 as $t){?>
                        
                            <tr>
                            
                            <td align="center"><?= $t->bal_top_gelir ?></td>
                            
                            </tr>
                            
                        <?php } ?>
                        </table>
                        <?php
    
                        $sorgu=$db->prepare('SELECT toplam_gelir.sube_ad, GROUP_CONCAT(toplam_gelir.birinci_ay_gelir + toplam_gelir.ikinci_ay_gelir + toplam_gelir.ucuncu_ay_gelir) AS "bay_top_gelir" FROM toplam_gelir,sube WHERE toplam_gelir.sube_ad=sube.sube_ad AND sube.sube_id="21"');
                        $sorgu->execute();
                        $top2=$sorgu-> fetchAll(PDO::FETCH_OBJ);//object olarak verilerimizi çekiyoruz.
                
                        ?>
                        
                        <table table border="5" cellpadding="2" style="width: 450px; background:yellow">
                        <tr>
                        <td align="center">BAYRAKLI ŞUBESİ TOPLAM GELİR</td>
                        
                        </tr>
                
                        <?php
                        foreach($top2 as $t1){?>
                        
                            <tr>
                            
                            <td align="center"><?= $t1->bay_top_gelir ?></td>
                            
                            </tr>
                            
                        <?php } ?>
                        </table>
                        <?php
    
                        $sorgu=$db->prepare('SELECT toplam_gelir.sube_ad, GROUP_CONCAT(toplam_gelir.birinci_ay_gelir + toplam_gelir.ikinci_ay_gelir + toplam_gelir.ucuncu_ay_gelir) AS "gaz_top_gelir" FROM toplam_gelir,sube WHERE toplam_gelir.sube_ad=sube.sube_ad AND sube.sube_id="31"');
                        $sorgu->execute();
                        $top3=$sorgu-> fetchAll(PDO::FETCH_OBJ);//object olarak verilerimizi çekiyoruz.
                
                        ?>
                        
                        <table table border="5" cellpadding="2" style="width: 450px;">
                        <tr>
                        <td align="center">GAZİEMİR ŞUBESİ TOPLAM GELİR</td>
                        
                        </tr>
                
                        <?php
                        foreach($top3 as $t2){?>
                        
                            <tr>
                            
                            <td align="center"><?= $t2->gaz_top_gelir ?></td>
                            
                            </tr>
                            
                        <?php } ?>
                        </table>
                        <?php
    
                        $sorgu=$db->prepare('SELECT toplam_gelir.sube_ad, GROUP_CONCAT(toplam_gelir.birinci_ay_gelir + toplam_gelir.ikinci_ay_gelir + toplam_gelir.ucuncu_ay_gelir) AS "guz_top_gelir" FROM toplam_gelir,sube WHERE toplam_gelir.sube_ad=sube.sube_ad AND sube.sube_id="41"');
                        $sorgu->execute();
                        $top4=$sorgu-> fetchAll(PDO::FETCH_OBJ);//object olarak verilerimizi çekiyoruz.
                
                        ?>
                        
                        <table table border="5" cellpadding="2" style="width: 450px;">
                        <tr>
                        <td align="center">GÜZELBAHÇE ŞUBESİ TOPLAM GELİR</td>
                        
                        </tr>
                
                        <?php
                        foreach($top4 as $t3){?>
                        
                            <tr>
                            
                            <td align="center"><?= $t3->guz_top_gelir ?></td>
                            
                            </tr>
                            
                        <?php } ?>
                        </table>
                </div>
                <div id="thirdContent" style="width:310px" >
                    
                    <h3 style="float:right">AYLIK TOPLAM GELİRLER</h3>
                        <?php
    
                        $sorgu=$db->prepare('SELECT toplam_gelir.sube_ad, GROUP_CONCAT(toplam_gelir.birinci_ay_gelir + toplam_gelir.ikinci_ay_gelir + toplam_gelir.ucuncu_ay_gelir) AS "kar_top_gelir" FROM toplam_gelir,sube WHERE toplam_gelir.sube_ad=sube.sube_ad AND sube.sube_id="51"');
                        $sorgu->execute();
                        $top5=$sorgu-> fetchAll(PDO::FETCH_OBJ);//object olarak verilerimizi çekiyoruz.
                
                        ?>
                        
                        <table table border="5" cellpadding="2" style="width: 450px;">
                        <tr>
                        <td align="center">KARABAĞLAR ŞUBESİ TOPLAM GELİR</td>
                        
                        </tr>
                
                        <?php
                        foreach($top5 as $t4){?>
                        
                            <tr>
                            
                            <td align="center"><?= $t4->kar_top_gelir ?></td>
                            
                            </tr>
                            
                        <?php } ?>
                        </table>
                        <?php
    
                        $sorgu=$db->prepare('SELECT toplam_gelir.sube_ad, GROUP_CONCAT(toplam_gelir.birinci_ay_gelir + toplam_gelir.ikinci_ay_gelir + toplam_gelir.ucuncu_ay_gelir) AS "ksk_top_gelir" FROM toplam_gelir,sube WHERE toplam_gelir.sube_ad=sube.sube_ad AND sube.sube_id="61"');
                        $sorgu->execute();
                        $top6=$sorgu-> fetchAll(PDO::FETCH_OBJ);//object olarak verilerimizi çekiyoruz.
                
                        ?>
                        
                        <table table border="5" cellpadding="2" style="width: 450px; background:yellow">
                        <tr>
                        <td align="center">KARŞIYAKA ŞUBESİ TOPLAM GELİR</td>
                        
                        </tr>
                
                        <?php
                        foreach($top6 as $t5){?>
                        
                            <tr>
                            
                            <td align="center"><?= $t5->ksk_top_gelir ?></td>
                            
                            </tr>
                            
                        <?php } ?>
                        </table>
                        <?php
    
                        $sorgu=$db->prepare('SELECT toplam_gelir.sube_ad, GROUP_CONCAT(toplam_gelir.birinci_ay_gelir + toplam_gelir.ikinci_ay_gelir + toplam_gelir.ucuncu_ay_gelir) AS "kon_top_gelir" FROM toplam_gelir,sube WHERE toplam_gelir.sube_ad=sube.sube_ad AND sube.sube_id="71"');
                        $sorgu->execute();
                        $top7=$sorgu-> fetchAll(PDO::FETCH_OBJ);//object olarak verilerimizi çekiyoruz.
                
                        ?>
                        
                        <table table border="5" cellpadding="2" width="300" style="width: 450px; background:yellow">
                        <tr>
                        <td align="center">KONAK ŞUBESİ TOPLAM GELİR</td>
                        
                        </tr>
                
                        <?php
                        foreach($top7 as $t6){?>
                        
                            <tr>
                            
                            <td align="center"><?= $t6->kon_top_gelir ?></td>
                            
                            </tr>
                            
                        <?php } ?>
                        </table>
                        <?php
    
                        $sorgu=$db->prepare('SELECT toplam_gelir.sube_ad, GROUP_CONCAT(toplam_gelir.birinci_ay_gelir + toplam_gelir.ikinci_ay_gelir + toplam_gelir.ucuncu_ay_gelir) AS "nar_top_gelir" FROM toplam_gelir,sube WHERE toplam_gelir.sube_ad=sube.sube_ad AND sube.sube_id="81"');
                        $sorgu->execute();
                        $top8=$sorgu-> fetchAll(PDO::FETCH_OBJ);//object olarak verilerimizi çekiyoruz.
                
                        ?>
                        
                        <table table border="5" cellpadding="2" style="width: 450px;">
                        <tr>
                        <td align="center">NARLIDERE ŞUBESİ TOPLAM GELİR</td>
                        
                        </tr>
                
                        <?php
                        foreach($top8 as $t7){?>
                        
                            <tr>
                            
                            <td align="center"><?= $t7->nar_top_gelir ?></td>
                            
                            </tr>
                            
                        <?php } ?>
                        </table>
                        
                    
                </div>
            
            
            <div class="clear"></div>
        </div>
        
    </div>
</body>

</html>