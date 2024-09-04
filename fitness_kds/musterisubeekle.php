<?php

$db = new PDO("mysql:host=localhost; dbname=fitness_sube_kds; charset=utf8", 'root' , '');

if(isset($_POST["kaydet"]))
{
    
    $sql = "INSERT INTO `musteri_sube` (`m_id`,`sube_id`) VALUES ( ?, ?);";
    $dizi =[
        $_POST["m_id"],
        $_POST["sube_id"],

    ];
 
    $sth = $db->prepare($sql);
   $sonuc = $sth->execute($dizi);
   header("Location:musteriler.php");
}
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
                <div id="secondContent" style="width:350px"></br></br>
                    <h3>MÜŞTERİ</h3>
                    <ul>
                        <li><a href="musteriekle.php">MÜŞTERİ EKLE</a></li></br>
                        <li><a href="musterisubeekle.php">ŞUBEYE MÜŞTERİ EKLE</a></li></br>
                        <li><a href="top_mus_say.php">TOPLAM MÜŞTERİ SAYISI</a></li></br>
                    </ul>
                </div>

                <div id="firstContent" style="width:600px">
                    
                        <?php
    
                        $sorgu=$db->prepare('SELECT * FROM sube');
                        $sorgu->execute();
                        $sube=$sorgu-> fetchAll(PDO::FETCH_OBJ);//object olarak verilerimizi çekiyoruz.
        
                        ?>
                        <h3>ŞUBELERİMİZ</h3>
                            <table table border="5" cellpadding="2" style="width: 550px;">
                            <?php
                                foreach($sube as $sub){?>
                                
                                    <tr style="text-align:center;">
                                    <td><?= $sub->sube_id ?></td>
                                    <td><?= $sub->sube_ad ?></td>
                                    </tr>
                                    
                                <?php } ?>
                            </table>

                </div>
                <div id="thirdContent" style="width:350px" >

                        <h3>ŞUBE KAYIT</h3> 

                            <form action="" method="post" class="kayit" >
                                <div>
                                    <label for="m_id" class="form-label">Müşteri ID</label></br>
                                    <input type="text" class="form-control " name="m_id">
                                </div>
                                </br>
                                <div>
                                    <label for="c_id" class="form-label">Şube ID</label></br>
                                    <input type="text" class="form-control " name="c_id">
                                </div>
                                </br>
                                <button type="submit" name="kaydet">KAYDET</button>
                            </form>
                            
                    
                    
                </div>

        
            
            <div class="clear"></div>

        </div>
        
    </div>
</body>

</html>