<html>
<head>
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
require 'PHPMailer-master/src/Exception.php';
require 'PHPMailer-master/src/PHPMailer.php';
require 'PHPMailer-master/src/SMTP.php';

if(isset($_POST["send"])){
    $mail=new PHPMailer(true);
    $mail->isSMTP();
    $mail->Host='smtp.gmail.com';
    $mail-> SMTPAuth=true;
    $mail-> Username='saranyat.20bsr@kongu.edu';
    $mail-> Password='vczzvnokmfqlcfgd';
    $mail-> SMTPSecure='ssl';
    $mail-> Port=465;
    $mail-> setFrom('saranyat.20bsr@kongu.edu');
    $mail-> addAddress($_POST["email"]);
    $mail-> isHTML(true);
    $mail-> Subject="Nivin Mobiles";
    $mail-> Body= "Your order has been placed successfully";
    $mail-> send();
    ?>
    <script>
    $(document).ready(function() {
        swal({
            title: "Thank You..!!!",
            text: "your order has been placed",
            icon: "success",
            
            timer: 2000
        });
        
    });
   
</script>

<?php
     
}
?>


</html>