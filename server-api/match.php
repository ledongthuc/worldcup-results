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
		
		$now = "";
		if(isset($_GET["n"])) {
			$now = $_GET["n"];
		}
		
		$isH = false;
		if(isset($_GET["h"])) {
			$isH = "where Date(DATE_ADD(`dateTime`, INTERVAL $timezoneOffset MINUTE)) = '$now'";
		}
		
	    header('Content-Type: application/json');
	    $mysqli = new mysqli('localhost','thaosin_worldcup','123qweASDzxc','thaosin_worldcup');
	    $myArray = array();
		
			//echo ("SELECT name, DATE_ADD(`dateTime`, INTERVAL $timezoneOffset MINUTE) as `dateTime`, team1Name, team1Score, team1Flag, team2Name, team2Score, team2Flag FROM `match` $isH order by dateTime");
		
	    if ($result = $mysqli->query("SELECT name, DATE_ADD(`dateTime`, INTERVAL $timezoneOffset MINUTE) as `dateTime`, team1Name, team1Score, team1Flag, team2Name, team2Score, team2Flag FROM `match` $isH order by dateTime")) {
	        $tempArray = array();
	        while($row = $result->fetch_object()) {
	        	$dateTime = new DateTime($row->dateTime);
	        	$date = $dateTime->format('Y-n-j');
				if($date == $now) {
					$date = "Today";
				}
	        	if (!array_key_exists($date, $myArray)) {
					$group = array();
					$myArray[$date] = $group;
	        	}
	        	$row->dateTime = $dateTime->format('H:i');
	        	$row->dateTimeLocal = (new DateTime($row->dateTimeLocal))->format('Y-n-j H:i');
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