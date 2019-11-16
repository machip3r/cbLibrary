<?php
    include_once "../verificacion.php";
    include_once "../../model/functions_bd.php";
    $bd=new functions();

    $usuario=$_SESSION['user'];
    $correo=$_SESSION['correo'];
    $master_search=$_GET["master-search"];
    $filter_search=$_GET["filter-search"];
    $libro=$_GET["libro"];
    $autor=$_GET["autor"];

    $rsEmail=$bd->getEmailUser();

	use PHPMailer\Exception;
    use PHPMailer\PHPMailer;

    require 'PHPMailer/PHPMailer.php';
	require 'PHPMailer/Exception.php';
	require 'PHPMailer/SMTP.php';

	$mail = new PHPMailer\PHPMailer();
    $mail->SMTPOptions = array(
        'ssl' => array(
            'verify_peer' => false,
            'verify_peer_name' => false,
            'allow_self_signed' => true
        )
    );

    $mail->isSMTP();
    $mail->SMTPDebug = 0;

    $mail->Host = 'smtp.gmail.com';
    $mail->SMTPSecure = 'tls';
    $mail->Port = 587;
    $mail->SMTPAuth = true;

    $mail->Username = 'cblibrary.company@gmail.com';
    $mail->Password = 'CBlibrary54321';

    $mail->setFrom('cblibrary.company@gmail.com', 'CBLibrary');

    $mail->Subject = 'Nuevo libro!';

    $mail->MsgHTML("<!DOCTYPE html><html><body><center><br><img src='https://dewey.tailorbrands.com/production/brand_version_mockup_image/684/818375684_b213c81c-1f7d-42e3-9057-86d3552e17ec.png?cb=1526141023' style='width:200px'><hr style='border:5px solid #F47D49'><h2>Hola, amigo(a). CBLibrary tiene un nuevo libro para ti.<br><br>Su nombre es: $libro y es de <i>$autor</i>.<br><br>Ingresa para que lo puedas leer o descargar.</h2><hr style='border:5px solid #F47D49'><h5><b>NOTA:</b> No es necesario contestar este correo</h5><h5>Atentamente: CBLibrary</h5><h6 style='color:#F47D49'>Copyright &#174; CBLibrary by CompuBac | All rights reserved</h6></center></body></html>");

    while ($value=mysqli_fetch_array($rsEmail)) {
        $mail->addAddress($value[0], 'usuario');
    
        if (!$mail->send()) {
        	echo "Error: ".$mail->ErrorInfo;
            header("Location: ../../view/search.php?master-search=".$master_search."&filter-search=".$filter_search);
        } else {
       		echo 'Correo enviado';
        }
    }
    
    header("Location: ../../view/search.php?master-search=".$master_search."&filter-search=".$filter_search);
?>