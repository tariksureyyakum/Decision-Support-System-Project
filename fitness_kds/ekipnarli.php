<?php

$db = new PDO("mysql:host=localhost; dbname=fitness_sube_kds; charset=utf8", 'root' , '');

if(isset($_POST["kaydet"]))
{
    
    $sql = "INSERT INTO `ekipman_sube` (`ekipman_id`, `sube_id`) VALUES ( ?, ?);";
    $dizi =[
        $_POST["ekipman_id"],
        $_POST["sube_id"],

    ];
 
    $sth = $db->prepare($sql);
   $sonuc = $sth->execute($dizi);
   header("Location:ekipnar.php");
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

                <div id="secondContent" style="width:265px"></br></br>

                        <p>Narlıdere Şubemizde 18 adet ekipman bulunmaktadır. Ekipman eklemek için</p>
                        <a href="gelecek2.php">Planlamalara göz at.</a></br></br>
                    
                        <h3>EKİPMAN EKLE</h3>    
                            <form action="" method="post" class="kayit">
                                <div>
                                    <label for="ekipman_id" class="form-label">Ekipman ID</label></br>
                                    <input type="text" class="form-control " name="ekipman_id">
                                </div>
                                </br>
                                <div>
                                    <label for="sube_id" class="form-label">Şube ID</label></br>
                                    <input type="text" class="form-control " name="sube_id">
                                </div>
                                </br>
                                <button type="submit" name="kaydet">KAYDET</button>
                            </form>

                </div>
                <?php
 
                $sorgu=$db->prepare('SELECT * FROM ekipman_narlidere');
                $sorgu->execute();
                $ekipman2=$sorgu-> fetchAll(PDO::FETCH_OBJ);//object olarak verilerimizi çekiyoruz.

                ?>
                <div id="firstContent" style="width:500px">

                    <h3>NARLIDERE ŞUBESİ EKİPMANLARI</h3>
                        <table table border="5" cellpadding="2" style="width: 500px;">
                        <tr>
                        <td>Şube ID</td>
                        <td>Ekipman ID</td>
                        </tr>

                        <?php
                        foreach($ekipman2 as $ek){?>
                        
                            <tr>
                            <td><?= $ek->sube_id ?></td>
                            <td><?= $ek->ekipman_id ?></td>
                            </tr>
                            
                        <?php } ?>
                        </table>
                        
                        
                </div>
            
                <div id="thirdContent" style="width:210px" >
                    <?php
    
                    $sorgu=$db->prepare('SELECT * FROM ekipman');
                    $sorgu->execute();
                    $ekipman=$sorgu-> fetchAll(PDO::FETCH_OBJ);//object olarak verilerimizi çekiyoruz.
            
                    ?>
                    <h3>EKİPMANLAR</h3>
                        <table table border="5" cellpadding="2"style="width: 400px;">
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