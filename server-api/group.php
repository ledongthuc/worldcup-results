<?php
	    if (isset($_SERVER['HTTP_ORIGIN'])) {
		header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
		header('Access-Control-Allow-Credentials: true');
		header('Access-Control-Max-Age: 17280');    // cache for 0.2 day
    	    }

	    header('Content-Type: application/json');
	    $mysqli = new mysqli('localhost','thaosin_worldcup','123qweASDzxc','thaosin_worldcup');
	    $myArray = array();
	    if ($result = $mysqli->query("SELECT `team`.*, `group`.name as groupName from `team`, `group` where `team`.groupId = `group`.`id`")) {
	        $tempArray = array();
	        while($row = $result->fetch_object()) {
	        	$groupName = $row->groupName;
	        	
	        	if (!array_key_exists($groupName, $myArray)) {
				$group = array();
				$myArray[$groupName] = $group;

	        	}
	        	array_push($myArray[$groupName], $row);	                
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