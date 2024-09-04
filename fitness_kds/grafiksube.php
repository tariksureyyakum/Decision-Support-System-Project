<?php

$db = new PDO("mysql:host=localhost; dbname=fitness_sube_kds; charset=utf8", 'root' , '');

$query=$db->query('SELECT * FROM t_musteri_sayisi');

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
                <div id="secondContent" style="width:265px">
                    <h3>Grafikler</h3>
                    <ul>
                        <li><a href="grafiksube.php">ŞUBE GRAFİĞİ</a></li></br>
                        <li><a href="grafikgelir.php">GELİR GRAFİĞİ</a></li>
                    </ul>
                </div>
                <div id="firstContent" style="width:713px">
                    <div align="center">
                        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                        <script type="text/javascript">
                        google.charts.load("current", {packages:["corechart"]});
                        google.charts.setOnLoadCallback(drawChart);
                        function drawChart() {
                            var data = new google.visualization.DataTable();
                            data.addColumn('string', 'Şube Ad');
                            data.addColumn('number', 'Müşteri Sayısı');

                            data.addRows([
                            
                            <?php

                                foreach($query as $row) {

                                echo "['".$row["sube_ad"]."',".$row["musteri_sayisi"]."],";

                                }

                            ?>

                            ]);


                            var options = {
                            title: 'Şubelere Göre Doluluk Oranları',
                            is3D: true,
                            };

                            var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
                            chart.draw(data, options);
                        }
                        </script>
                        <div id="piechart_3d" style="width: 1000px; height: 400px;"></div>
                    </div>
                </div>  
            
            
            <div class="clear"></div>
        </div>
        
    </div>
</body>

</html>