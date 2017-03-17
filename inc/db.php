<?php

$link = mysqli_connect("localhost", "root", "", "schoenmerken");

if ($link->connect_error) {
	echo "Falied to connect to mysqli:" . $link->connect_error;
}