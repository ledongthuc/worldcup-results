'use strict';

/* Controllers */

angular.module('worldcupResults.controllers', [])
  .controller('HomeController', ['$scope', function($scope, $http) {
	  $http.get('http://worldcup.thaosin.com/match.php').success(function(data) {
		  $scope.match = data;
	  });
  }])
  .controller('MatchesController', ['$scope', function($scope) {

  }])
  
  .controller('GroupsController', ['$scope', function($scope) {

  }]);
