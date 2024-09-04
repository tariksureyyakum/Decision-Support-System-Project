<?php

$db = new PDO("mysql:host=localhost; dbname=fitness_sube_kds; charset=utf8", 'root' , '');

if(isset($_POST["kaydet"]))
{
    
    $sql = "INSERT INTO `musteri` (`m_id`,`c_id`, `m_ad`, `m_soyad`,`m_tcno`, `m_telno`,`m_dogum_tarihi`, `m_adres`) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?);";
    $dizi =[
        $_POST["m_id"],
        $_POST["c_id"],
        $_POST["m_ad"],
        $_POST["m_soyad"],
        $_POST["m_tcno"],
        $_POST["m_telno"],
        $_POST["m_dogum_tarihi"],
        $_POST["m_adres"],

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
        </div>
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
                    <div id="container" >
                        <h3 align="center">MÜŞTERİ EKLE</h3>    
                            <form action="" method="post" class="kayit" align="center">
                                <div>
                                    <label for="m_id" class="form-label">Müşteri ID</label></br>
                                    <input type="text" class="form-control " name="m_id">
                                </div>
                                </br>
                                <div>
                                    <label for="c_id" class="form-label">Cinsiyet ID</label></br>
                                    <input type="text" class="form-control " name="c_id">
                                </div>
                                </br>
                                <div>
                                    <label for="m_ad" class="form-label">Müşteri Ad</label></br>
                                    <input type="text" class="form-control " name="m_ad">
                                </div>
                                </br>
                                <div>
                                    <label for="m_soyad" class="form-label">Müşteri Soyad</label></br>
                                    <input type="text" class="form-control " name="m_soyad">
                                </div>
                                </br>
                                <div>
                                    <label for="m_tcno" class="form-label">Müşteri TC No</label></br>
                                    <input type="text" class="form-control " name="m_tcno">
                                </div>
                                </br>
                                <div>
                                    <label for="m_telno" class="form-label">Müşteri Tel No</label></br>
                                    <input type="text" class="form-control " name="m_telno">
                                </div>
                                </br>
                                <div>
                                    <label for="m_dogum_tarihi" class="form-label">Müşteri Doğum Tarihi</label></br>
                                    <input type="text" class="form-control " name="m_dogum_tarihi">
                                </div>
                                </br>
                                <div>
                                    <label for="m_adres" class="form-label">Müşteri Adres</label></br>
                                    <input type="text" class="form-control " name="m_adres">
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