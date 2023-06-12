<?php
$servername = "SERVENAME_HERE";
$username = "root";
$password = "YOUR_PASS_HERE";
$database = "meubanco";

// Criar conexão


$link = new mysqli($servername, $username, $password, $database);

/* check connection */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

?>
