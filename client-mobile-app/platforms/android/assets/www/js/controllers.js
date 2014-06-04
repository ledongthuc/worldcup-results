'use strict';

/* Controllers */

angular.module('worldcupResults.controllers', [])
  .controller('HomeController', ['$scope', '$http', function($scope, $http) {
		  
	  var currentDate = new Date()
	  var currentTimeZone = - currentDate.getTimezoneOffset();
	  var currentDateNow = currentDate.getFullYear() + "-" + currentDate.getMonth() + "-" + currentDate.getDate();
	  
	  $http.get('http://worldcup.thaosin.com/match.php?tz=' + currentTimeZone + "&h=true&n=" + currentDateNow).success(function(data) {
		  $scope.groups = data;
	  }).
	  error(function(data, status, headers, config) {
		  $scope.showError = true;
	  });
	  
  }])
  .controller('MatchesController', ['$scope', '$http', '$resource', function($scope, $http, $resource) {
  
		$scope.groups = $resource("match.json",{},{
			query:{method:'GET'}
		}).get();
  
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
  .controller('GroupsController', ['$scope', '$http', '$resource', function($scope, $http, $resource) {
		
		$scope.groups = $resource("group.json",{},{
			query:{method:'GET'}
		}).get();
  
		var currentDate = new Date()
		var currentTimeZone = - currentDate.getTimezoneOffset();
		$http.get('http://worldcup.thaosin.com/group.php').success(function(data) {
		  $scope.groups = data;
		}).
		error(function(data, status, headers, config) {
			$scope.showError = true;
		});

  }])
  .controller('DonationController', ['$scope', function($scope) {

  }]);
