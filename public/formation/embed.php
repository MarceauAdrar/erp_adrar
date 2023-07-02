<?php
include_once("../../src/m/connect.php");

$title = " | Cours";
ob_start();
include_once("./header.php");
?>
<iframe src="https://docs.google.com/presentation/d/e/<?=@$_GET['slide']?>/embed?start=true&loop=true&delayms=60000" frameborder="0" width="1280" height="749" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>
<?php
include_once("./js.php");
include_once("./footer.php");
die(ob_get_clean());
?>