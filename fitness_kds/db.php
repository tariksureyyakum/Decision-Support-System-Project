<?php

try{
    $db = new PDO("mysql:host=localhost; dbname=fitness_sube_kds; charset=utf8", 'root' , '');
    //echo " Veritabanı Bağlandı";
}
catch(Exception $e )
{
    echo $e->getMessage();
}

if(isset($_SESSION['Kullanici'])){

    $KullaniciBilgileri = $db->prepare("SELECT * FROM adminx WHERE admin_username = ? LIMIT 1 ");
    $KullaniciBilgileri->execute([$_SESSION['Kullanici']]);
    $KullaniciBilgileriSayisi = $KullaniciBilgileri->rowCount();
    $KullaniciBilgi = $KullaniciBilgileri->fetch(PDO::FETCH_ASSOC);

    if($KullaniciBilgileriSayisi > 0){
        $KullaniciAdi = $KullaniciBilgi['admin_username'];
    }
}

?>