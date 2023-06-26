<?php 
var_dump($_GET["code"]);
echo password_hash($_GET["code"], PASSWORD_BCRYPT);
?>