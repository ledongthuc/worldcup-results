<?php
		if (isset($_SERVER['HTTP_ORIGIN'])) {
			header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
		        header('Access-Control-Allow-Credentials: true');
		        header('Access-Control-Max-Age: 17280');    // cache for 0.2 day
    		}

		$timezoneOffset = -420;
		if(isset($_GET["tz"])) {
			$timezoneOffset = $timezoneOffset + (int)$_GET["tz"];
		}
		
	    header('Content-Type: application/json');
	    $mysqli = new mysqli('localhost','thaosin_worldcup','123qweASDzxc','thaosin_worldcup');
	    $myArray = array();
	    if ($result = $mysqli->query("SELECT name, DATE_ADD(`dateTime`, INTERVAL $timezoneOffset MINUTE) as `dateTime`, (select name from `team` where `match`.team1Id = `team`.id) as team1Name, (select flag from `team` where `match`.team1Id = `team`.id) as team1Flag, (select name from `team` where `match`.team2Id = `team`.id) as team2Name, team1Score, team2Score, (select flag from `team` where `match`.team2Id = `team`.id) as team2Flag FROM `match` order by dateTime")) {
	        $tempArray = array();
	        while($row = $result->fetch_object()) {
	        	$dateTime = new DateTime($row->dateTime);
	        	$date = $dateTime->format('Y-m-d');
	        	if (!array_key_exists($date, $myArray)) {
				$group = array();
				$myArray[$date] = $group;

	        	}
	        	$row->dateTime = $dateTime->format('H:i');
	        	$row->dateTimeLocal = (new DateTime($row->dateTimeLocal))->format('Y-m-d H:i');
	        	array_push($myArray[$date], $row);
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