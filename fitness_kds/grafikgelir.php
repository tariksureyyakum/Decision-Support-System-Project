<?php

$db = new PDO("mysql:host=localhost; dbname=fitness_sube_kds; charset=utf8", 'root' , '');


$query1=$db->query('SELECT * FROM aylik_gelir1');
$query2=$db->query('SELECT * FROM aylik_gelir2');
$query3=$db->query('SELECT * FROM aylik_gelir3');
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
                      google.charts.load("current", {packages:["bar"]});
                      google.charts.setOnLoadCallback(drawChart);
                      function drawChart() {
                        var data = new google.visualization.DataTable();
                        data.addColumn('string', 'Şube Ad');
                        data.addColumn('number', 'Net Gelir');

                        data.addRows([
                          
                          <?php

                            foreach($query1 as $row1) {

                              echo "['".$row1["sube_ad"]."',".$row1["net_gelir"]."],";

                            }

                          ?>

                        ]);


                        var options = {
                          chart: {
                            title: '1. AY GELİRLERİ',
                            subtitle: 'Gelir: Şubeler',
                          }
                        };

                        var chart = new google.charts.Bar(document.getElementById('columnchart_material1'));
                        chart.draw(data, google.charts.Bar.convertOptions(options));
                      }
                    </script>
                    <div id="columnchart_material1" style="width: 800px; height: 400px;"></div>
                  </div>
                  <div align="center">
                    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                    <script type="text/javascript">
                      google.charts.load("current", {packages:["bar"]});
                      google.charts.setOnLoadCallback(drawChart);
                      function drawChart() {
                        var data = new google.visualization.DataTable();
                        data.addColumn('string', 'Şube Ad');
                        data.addColumn('number', 'Net Gelir');

                        data.addRows([
                          
                          <?php

                            foreach($query2 as $row2) {

                              echo "['".$row2["sube_ad"]."',".$row2["net_gelir2"]."],";

                            }

                          ?>

                        ]);


                        var options = {
                          chart: {
                            title: '2. AY GELİRLERİ',
                            subtitle: 'Gelir: Şubeler',
                          }
                        };

                        var chart = new google.charts.Bar(document.getElementById('columnchart_material2'));
                        chart.draw(data, google.charts.Bar.convertOptions(options));
                      }
                    </script>
                    <div id="columnchart_material2" style="width: 800px; height: 400px;"></div>
                  </div>
                  <div align="center">
                    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                    <script type="text/javascript">
                      google.charts.load("current", {packages:["bar"]});
                      google.charts.setOnLoadCallback(drawChart);
                      function drawChart() {
                        var data = new google.visualization.DataTable();
                        data.addColumn('string', 'Şube Ad');
                        data.addColumn('number', 'Net Gelir');

                        data.addRows([
                          
                          <?php

                            foreach($query3 as $row3) {

                              echo "['".$row3["sube_ad"]."',".$row3["net_gelir3"]."],";

                            }

                          ?>

                        ]);


                        var options = {
                          chart: {
                            title: '3. AY GELİRLERİ',
                            subtitle: 'Gelir: Şubeler',
                          }
                        };

                        var chart = new google.charts.Bar(document.getElementById('columnchart_material3'));
                        chart.draw(data, google.charts.Bar.convertOptions(options));
                      }
                    </script>
                    <div id="columnchart_material3" style="width: 800px; height: 400px;"></div>
                  </div>
                </div>
            </div>
            
            <div class="clear"></div>
        
        
    </div>
</body>

</html>