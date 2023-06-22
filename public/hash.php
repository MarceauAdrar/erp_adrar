<?php 

echo password_hash($_GET[0], PASSWORD_BCRYPT);
?>