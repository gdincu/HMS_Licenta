<?php 

global $dbservername, $dbusername, $dbpassword, $dbname;

$dbservername = "localhost";
$dbusername = "gdincu";
$dbpassword = "gdincu";
$dbname = "hms";
$options    = array(
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
              );

//DB connection
// require_once('config.php');
global $connection;
//$connection = mysqli_connect($dbservername,$dbusername,$dbpassword,$dbname);
$connection = new PDO("mysql:host=$host", $dbusername, $dbpassword, $options);

//Verificarea conexiunii
if(!$connection)
    die ("Connection failed!");

?>
