<?php 
if(isset($_POST['submit'])){
    $to = "veloxnsales@gmail.com"; // this is your Email address
    $from = $_POST['email']; // this is the sender's Email address 
    $full_name = $_POST['full_name'];
    //$query_title = $_POST['query_title'];
    $phone_number = $_POST['phone_number'];
    $subject = $_POST['subject'];
    $subject2 = "Your Contact Information Sent.";
	$messagebody = $_POST['message'];
	
	/*
	$location = file_get_contents('http://freegeoip.net/json/'.$_SERVER['REMOTE_ADDR']);
           $json = json_decode($location, true);
		   extract($json);
	$user_location="$country_code.$country_name.,.$region_name.,.$city";
 
			 $ip = $_SERVER['REMOTE_ADDR'];
	$query = @unserialize(file_get_contents('http://ip-api.com/php/'.$ip));
    if($query && $query['status'] == 'success')
    {
        $Locationaddress = $query['city'] . ", " . $query['zip']. ", " . $query['country'];
    } else {
   $Locationaddress = "Unable to get location but IP address is - " . $ip;
	}
	*/
  $Locationaddress = "NA";
    //$message = $full_name . ", Phone - " . $phone_number . " wrote the following:" . "\n\n" . $_POST['message']. "\n\n The User Location: " . $Locationaddress;
	$message = $full_name . ", Phone - " . $phone_number . " wrote the following:" . "\n\n" . $messagebody . "\n\n The User Location: " . $Locationaddress;
    $message2 = "Here is a copy of your message " . $full_name . "\n\n" . $messagebody;

    $headers = "From:" . $from;
    $headers2 = "From:" . $to;
    mail($to,$subject,$message,$headers);
    mail($from,$subject2,$message2,$headers2); // sends a copy of the message to the sender
    echo "Mail Sent. Thank you " . $full_name . ", we will contact you shortly.";
    // You can also use header('Location: thank_you.php'); to redirect to another page.
    // You cannot use header and echo together. It's one or the other.
	header('Location: contact-message-submitted.html#body');
    }
	
?>