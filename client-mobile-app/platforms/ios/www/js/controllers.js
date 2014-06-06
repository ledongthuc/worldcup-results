'use strict';

/* Controllers */

angular.module('worldcupResults.controllers', [])
  .controller('HomeController', ['$scope', '$rootScope', '$http', function($scope, $rootScope, $http) {
	  
	  $rootScope.title = "WorldCup";
	  $rootScope.selectedMenu = "home";
	  
	  var currentDate = new Date()
	  var currentTimeZone = - currentDate.getTimezoneOffset();
	  var currentDateNow = currentDate.getFullYear() + "-" + currentDate.getMonth() + "-" + currentDate.getDate();
	  
	  $http.get('http://worldcup.thaosin.com/match.php?tz=' + currentTimeZone + "&h=true&n=" + currentDateNow).success(function(data) 
		{
			if(data.lengh > 0) {
				$scope.groups = data;
			}
		}).
		error(function(data, status, headers, config) {
			$scope.showError = true;
		});
	  
  }])
  .controller('MatchesController', ['$scope', '$rootScope', '$http', '$resource', function($scope, $rootScope, $http, $resource) {
	  
	  	$rootScope.title = "Matches";
	  	$rootScope.selectedMenu = "matches";
	  
		var currentDate = new Date()
		var currentTimeZone = - currentDate.getTimezoneOffset();
		var currentDateNow = currentDate.getFullYear() + "-" + currentDate.getMonth() + "-" + currentDate.getDate();
		$http.get('http://worldcup.thaosin.com/match.php?tz=' + currentTimeZone + "&n=" + currentDateNow).success(function(data) {
			$scope.groups = data;
		}).
		error(function(data, status, headers, config) {
			$scope.showError = true;
		});
  }])
  .controller('GroupsController', ['$scope', '$rootScope', '$http', '$resource', function($scope, $rootScope, $http, $resource) {
		
	  	$rootScope.title = "Groups";
	  	$rootScope.selectedMenu = "groups";
	  
		var currentDate = new Date()
		var currentTimeZone = - currentDate.getTimezoneOffset();
		$http.get('http://worldcup.thaosin.com/group.php').success(function(data) {
		  $scope.groups = data;
		}).
		error(function(data, status, headers, config) {
			$scope.showError = true;
		});
  }]);
