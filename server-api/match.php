<?php
	    header('Content-Type: application/json');
	    $mysqli = new mysqli('localhost','thaosin_worldcup','123qweASDzxc','thaosin_worldcup');
	    $myArray = array();
	    if ($result = $mysqli->query("SELECT * FROM `match`")) {
	        $tempArray = array();
	        while($row = $result->fetch_object()) {
	                $tempArray = $row;
	                array_push($myArray, $tempArray);
	            }
	        echo json_encode($myArray);
	    }
	    if ($result != null) {
		    $result->close();
	    }
	    if ($mysqli != null) {
	    	    $mysqli->close();
    	    }
?> 