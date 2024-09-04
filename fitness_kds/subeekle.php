<?php

$db = new PDO("mysql:host=localhost; dbname=fitness_sube_kds; charset=utf8", 'root' , '');

if(isset($_POST["kaydet"]))
{
    
    $sql = "INSERT INTO `sube` (`ilce_id`, `sube_id`, `sube_ad`) VALUES ( ?, ?, ?);";
    $dizi =[
        $_POST["ilce_id"],
        $_POST["sube_id"],
        $_POST["sube_ad"],

    ];
 
    $sth = $db->prepare($sql);
   $sonuc = $sth->execute($dizi);
   header("Location:subeler.php");
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
                    <div id="container" align="center" >
                        <h3>ŞUBE EKLE</h3>    
                            <form action="" method="post" class="kayit">
                                <div>
                                    <label for="ilce_id" class="form-label">İlçe ID</label></br>
                                    <input type="text" class="form-control " name="ilce_id">
                                </div>
                                </br>
                                <div>
                                    <label for="sube_id" class="form-label">Şube ID</label></br>
                                    <input type="text" class="form-control " name="sube_id">
                                </div>
                                </br>
                                <div>
                                    <label for="sube_ad" class="form-label">Şube AD</label></br>
                                    <input type="text" class="form-control " name="sube_ad">
                                </div>
                                </br>
                                <button type="submit" name="kaydet">KAYDET</button>
                            </form>
                    </div>
                </div>
            
            
            <div class="clear"></div>
        </div>
        
    </div>
</body>

</html>