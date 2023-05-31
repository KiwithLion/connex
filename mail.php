<?php
    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\Exception;
    use PHPMailer\PHPMailer\SMTP;
    require 'PHPMailer-master/src/Exception.php';
    require 'PHPMailer-master/src/PHPMailer.php';
    require 'PHPMailer-master/src/SMTP.php';

    function send_mail($recipient, $subject, $message){

        $mail = new PHPMailer();
        $mail->IsSMTP();

        $mail->SMTPDebug = 0;
        $mail->SMTPAuth = TRUE;
        $mail->SMTPSecure = "tls"; 
        $mail->Port = 587;
        $mail->Host = "smtp.gmail.com";
        $mail->Username = "Kiwithphetla@gmail.com";
        $mail->Password = "ezyokejhrllftdfi";

        $mail->IsHTML(true);
        $mail->AddAddress($recipient, "recipient-name");
        $mail->SetFrom("Kiwithphetla@gmail.com", "E - SHOP");
        //$mail->AddReplyTo("reply-to-email", "reply-to-email");
        //$mail->AddCC("cc-recipient-email", "cc-recipient-email");
        $mail->$subject = $subject;
        $content = $message;

        $mail->MsgHTML($content);
        if (!$mail->Send()) {
           /* echo "ERROR! while sending Email";
            Var_dump($mail);*/
            return false;
        } else {
           // echo "Email Sent successfully";
            return true;
        }
    }
?>