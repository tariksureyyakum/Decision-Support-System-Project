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
                    <li><a href="gelecek2.php">ŞUBELERDEKİ PLANLAMALAR</a></li>
                    </ul></br></br>
                        <p>
                            FITNESS CLUB olarak aylık şube gelir toplamı hedeflerimiz *108.000* ve üzeri net gelir elde etmektir.</br></br>
                            2. ayımızda hedefimize ulaştığımız gözlemlenmektedir.</br></br>
                            <a href="gelecek2.php">Şube Planlaması sayfasına giderek ayrıntılı şube gelirlerine bakabilirisiniz.</a></br></br>
                            Diğer aylarımızda gelirin hedeflenen sayıya ulaşılmadığı gözlemlenmektedir.</br></br>
                            Önümüzdeki 3 ay boyunca gelirlerin yükselmesi için ekipman arttırılması önerilmektedir.</br></br>

                        </p>
                        
            </div>
            <?php
 
            $sorgu=$db->prepare('SELECT * FROM `toplam_gelir`');
            $sorgu->execute();
            $uzun=$sorgu-> fetchAll(PDO::FETCH_OBJ);//object olarak verilerimizi çekiyoruz.

            ?>
            <div id="firstContent" style="width:600px">
                    <h3>3 AYLIK ŞUBE GELİRLERİ</h3>
                            <table table border="5" cellpadding="2" style="width: 600px;">
                            <tr>
                            <td align="center">Şube Ad</td>
                            <td align="center">1. Ay Gelir</td>
                            <td align="center">2. Ay Gelir</td>
                            <td align="center">3. Ay Gelir</td>
                            </tr>
                    
                            <?php
                            foreach($uzun as $uz){?>
                            
                                <tr>
                                <td align="center"><?= $uz->sube_ad ?></td>
                                <td align="center"><?= $uz->birinci_ay_gelir ?></td>
                                <td align="center"><?= $uz->ikinci_ay_gelir ?></td>
                                <td align="center"><?= $uz->ucuncu_ay_gelir ?></td>
                                </tr>
                                
                            <?php } ?>
                            </table>

            </div>
            <div id="thirdContent" style="width:180px" >

                    <h3 align="right">AYLIK TOPLAM</h3>
                    
                    <?php
        
                    $sorgu=$db->prepare('SELECT SUM(birinci_ay_gelir) AS birinci FROM toplam_gelir');
                    $sorgu->execute();
                    $BIR=$sorgu-> fetchAll(PDO::FETCH_OBJ);//object olarak verilerimizi çekiyoruz.

                    ?>
                            
                            <table table border="5" cellpadding="2" style="width: 250px;">
                                <tr>
                                <td align="center">1. Ay Gelir Toplamı</td>
                                </tr>
                            
                                <?php
                                foreach($BIR as $B){?>
                                    
                                    <tr>
                                    <td align="center"><?= $B->birinci ?></td>
                                    </tr>
                                        
                                <?php } ?>
                            </table>
                    
                        <?php
        
                        $sorgu=$db->prepare('SELECT SUM(ikinci_ay_gelir) AS ikinci FROM toplam_gelir');
                        $sorgu->execute();
                        $IKI=$sorgu-> fetchAll(PDO::FETCH_OBJ);//object olarak verilerimizi çekiyoruz.

                        ?>
                            
                            <table table border="5" cellpadding="2" style="width: 250px;  background:yellow">
                                <tr>
                                <td align="center">2. Ay Gelir Toplamı</td>
                                </tr>
                            
                                <?php
                                foreach($IKI as $K){?>
                                    
                                    <tr>
                                    <td align="center"><?= $K->ikinci ?></td>
                                    </tr>
                                        
                                <?php } ?>
                            </table>
                    
                        <?php
        
                        $sorgu=$db->prepare('SELECT SUM(ucuncu_ay_gelir) AS ucuncu FROM toplam_gelir');
                        $sorgu->execute();
                        $UC=$sorgu-> fetchAll(PDO::FETCH_OBJ);//object olarak verilerimizi çekiyoruz.

                        ?>
                            
                            <table table border="5" cellpadding="2" style="width: 250px;">
                                <tr>
                                <td align="center">3. Ay Gelir Toplamı</td>
                                </tr>
                            
                                <?php
                                foreach($UC as $U){?>
                                    
                                    <tr>
                                    <td align="center"><?= $U->ucuncu ?></td>
                                    </tr>
                                        
                                <?php } ?>
                            </table>


            </div>
            
            
            <div class="clear"></div>
            
        </div>
        
    </div>
    
</body>

</html>