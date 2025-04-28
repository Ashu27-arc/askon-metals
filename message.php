<?php
session_start();
if (isset($_POST['vercode'])) {
    if ((empty($_SESSION["vercode"])) || ($_SESSION["vercode"] != $_POST['vercode'])) {
        die("<script>alert('Invalid Verification Code'); history.back();</script>");
    }
}
require 'config.php';
   $full_name=$_POST['full_name'];
   $phone_number=$_POST['phone_number'];
   $email=$_POST['email'];
   $message=$_POST['message'];
    $subject=$_POST['subject'];
	 
	 
	$sql = "INSERT INTO req_query_table(full_name,phone_number,email,message, subject)VALUES ('$full_name','$phone_number','$email','$message','$subject')";


if ($conn->query($sql) === TRUE) {
  //echo "New record created successfully"
   echo "You Message Sent. Thank you " . $full_name . ", we will contact you shortly.";
    // You can also use header('Location: thank_you.php'); to redirect to another page.
    // You cannot use header and echo together. It's one or the other.
	//https://ai.botcontrolpanel.com/api/send?number=917678665537&type=text&message=Thanks+for+your+Veloxn+Private+Limited&instance_id=6538CAD5B0271&access_token=64951e687bcbb
	
	// header('Location: https://ai.botcontrolpanel.com/api/send?number=91' . $phone_number . '&type=text&message=Thanks+for+your+Veloxn+Private+Limited2&instance_id=6538CAD5B0271&access_token=64951e687bcbb');
    
    if($subjectV=='SocialNetworkingSystem') {
        $Message = "&type=text&message=Thanks+for+contacting+Veloxn+Private+Limited.+Regarding+Social+Networking+System.+We+will+get+back+to+you+soon,+you+can+post+more+queries+here....";	
     }else{
        $MIndex = "&type=text&message=Thanks+for+contacting+Askon+Metals+Limited.+Regarding+Social+Networking+System.+We+will+get+back+to+you+soon,+you+can+post+more+queries+here....";
            }

    $url = 'https://ai.botcontrolpanel.com/api/send?number=91' . $phone_number . '&type=text&message=Thanks+for+contacting+Veloxn+Private+Limited.+Regarding+Social+Networking+System.+We+will+get+back+to+you+soon,+you+can+post+more+queries+here....&instance_id=6538CAD5B0271&access_token=64951e687bcbb';
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    //curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    $result = curl_exec($ch);
    curl_close($ch);
    if (curl_errno($ch)) {
        echo 'Error: ' . curl_error($ch);
    }

	
	header('Location: contact-message-submitted.html#body');
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
 					 

?>

 
