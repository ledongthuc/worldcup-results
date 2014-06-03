<?php
		$timezoneOffset = -420;
		if(isset($_GET["tz"])) {
			$timezoneOffset = $timezoneOffset + (int)$_GET["tz"];
		}
		
	    header('Content-Type: application/json');
	    $mysqli = new mysqli('localhost','thaosin_worldcup','123qweASDzxc','thaosin_worldcup');
	    $myArray = array();
	    if ($result = $mysqli->query("SELECT id, name, DATE_ADD(`dateTime`, INTERVAL $timezoneOffset MINUTE) as `dateTime`, DATE_ADD(`dateTime`, INTERVAL -600 MINUTE) as `dateTimeLocal` , team1Id, team2Id, team1Score, team2Score FROM `match` order by dateTime")) {
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