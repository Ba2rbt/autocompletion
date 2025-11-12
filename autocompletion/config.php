<?php
$host = 'localhost';
$user = 'root';
$password = '';
$database = 'autocompletion';

$connexion = new mysqli($host, $user, $password, $database);

if ($connexion->connect_error) {
    die('Erreur de connexion : ' . $connexion->connect_error);
}

$connexion->set_charset('utf8mb4');
?>
