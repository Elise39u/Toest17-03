<?php 

	function getID($link) {
		$id = $_GET['id'];
		return $id;
	}

	function SelectDataSchoenen($link) {
	$query = $link->query("SELECT * FROM schoenen");
	if (!$query) {
		echo $link->error_log("No query decteced");
	} else {
		$resultaat = $query->fetch_all(PDO::FETCH_NUM);
		return $resultaat;
	}
}

    function SelectDataSize($link) {
	$query = $link->query("SELECT * FROM size");
	if (!$query) {
		echo $link->error_log("No query decteced");
	} else {
		$sizes = $query->fetch_all(PDO::FETCH_NUM);
		return $sizes;
	}
}

	function SelectDataSchoenenSelected($link, $value) {
	$query = $link->query("SELECT * FROM schoenen WHERE feetsize=$value");
	$link->escape_string($value);
	if (!$query) {
		echo "Error";
	} else {
		$rowCount = $query->num_rows;
		$newInfo = $query->fetch_all(PDO::FETCH_NUM);
		if($rowCount > 0) {
			return $newInfo;
		} else {
			header('Location: index.php');
		}
	}
}