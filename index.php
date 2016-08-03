<?php



if(isset($_GET['domain'])){

	$domain = $_GET['domain'];
	if(is_dir("/var/www/".$domain)){
		echo "Error, this Domain allready exists!";
	}
	else{
		$passwd = rand(0,100000);

		$output = shell_exec("sudo /root/mkvhost.sh ".$domain." ".$passwd);
		echo "Congratulation! Your Webspace has been created and is available at ".$domain."<br>Please make sure to set an A-Record for your selected Domain to Admin_add_your_Servers_IP_Adress_here!<br><br><b>Your FTP Data:</b><br>Adress: mail.tjbn.de<br>Username: ".$domain."<br>Password: ".$passwd;
	}
}

else{
?>

<form method="get">
	<input type="text" name="domain" placeholder="domain">
</form>

<?php
}
?>
