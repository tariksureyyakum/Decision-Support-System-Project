<?php
 $db = new PDO("mysql:host=localhost; dbname=fitness_sube_kds; charset=utf8", 'root' , '');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FITNESS SPOR KDS</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

    <div class="container">
	<div class="screen">
		<div class="screen__content">
                    <?php
                        if($_POST){
                            $GelenUsername = $_POST['username'];
                            $GelenPassword = $_POST['password'];

                            if($GelenUsername != "" and $GelenPassword != ""){

                                $KullaniciKontrol = $db->prepare("SELECT * FROM adminx WHERE admin_username = ? and admin_password = ? ");
                                $KullaniciKontrol->execute([$GelenUsername, $GelenPassword]);
                                $KullaniciKontrol = $KullaniciKontrol->rowCount();
                                if ($KullaniciKontrol > 0){
                                    
                                    $_SESSION['Kullanici'] = $GelenUsername;
                                    echo'<div class="alert alert-success">GİRİŞ YAPTINIZ. </div>';
                                    

                                }else
                                echo'<div class="alert alert-danger">HATALI GİRİŞ YAPTINIZ. </div>';
                            }else{
                                echo'<div class="alert alert-danger">Lütfen kullanıcı adı ve şifre giriniz! </div>';
                            }
                        }   
                    ?>
			<form class="login" action="index.php" method="post">
				<div class="login__field">
					<i class="login__icon fas fa-user"></i>
					<input type="text" class="login__input" placeholder="Kullanıcı Adı">
				</div>
				<div class="login__field">
					<i class="login__icon fas fa-lock"></i>
					<input type="password" class="login__input" placeholder="Şifre">
				</div>
				<button class="button login__submit">
					<span class="button__text">Giriş Yap</span>
					<i class="button__icon fas fa-chevron-right"></i>
				</button>				
			</form>
		</div>
		<div class="screen__background">
			<span class="screen__background__shape screen__background__shape4"></span>
			<span class="screen__background__shape screen__background__shape3"></span>		
			<span class="screen__background__shape screen__background__shape2"></span>
			<span class="screen__background__shape screen__background__shape1"></span>
		</div>		
	</div>
</div>
    </form>
</body>
</html>