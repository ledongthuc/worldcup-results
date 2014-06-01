<?php
	    $mysqli = new mysqli('localhost','root','123qweASDzxc','worldcup-results');
	    $myArray = array();
	    if ($result = $mysqli->query("SELECT * FROM group")) {
	        $tempArray = array();
	        while($row = $result->fetch_object()) {
	                $tempArray = $row;
	                array_push($myArray, $tempArray);
	            }
	        echo json_encode($myArray);
	    }
	
	    $result->close();
    	    $mysqli->close();
?> 