'use strict';

/* Controllers */

angular.module('worldcupResults.controllers', [])
  .controller('HomeController', ['$scope', '$http', function($scope, $http) {
	  
	  
	  
  }])
  .controller('MatchesController', ['$scope', '$http', function($scope, $http) {

	  var currentDate = new Date()
	  var currentTimeZone = - currentDate.getTimezoneOffset();
	  
	  $http.get('http://worldcup.thaosin.com/match.php?tz=' + currentTimeZone).success(function(data) {
		  $scope.groups = data;
	  }).
	  error(function(data, status, headers, config) {
		  $scope.showError = true;
	  });
	  
  }])
  .controller('GroupsController', ['$scope', '$http', function($scope, $http) {

	  var currentDate = new Date()
	  var currentTimeZone = - currentDate.getTimezoneOffset();
	  
	  $http.get('http://worldcup.thaosin.com/group.php').success(function(data) {
		  $scope.groups = data;
	  }).
	  error(function(data, status, headers, config) {
		  $scope.showError = true;
	  });
	  
  }]);
