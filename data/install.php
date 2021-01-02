<?php

/**
 * Open a connection via PDO to create a
 * new database and table with structure.
 *
 */

require "../public/scripts/config.php";

try {
    $connection = new PDO("mysql:host=$host", $username, $password, $options);
	$init = file_get_contents("init.sql");
	$connection->exec($init);

    echo "Baza de date si tabele create cu succes.";
} catch(PDOException $error) {
    echo $init . "<br>" . $error->getMessage();
}