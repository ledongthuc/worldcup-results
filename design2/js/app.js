'use strict';


// Declare app level module which depends on filters, and services
angular.module('worldcupResults', [
  'ngRoute',
  'worldcupResults.filters',
  'worldcupResults.services',
  'worldcupResults.directives',
  'worldcupResults.controllers'
]).
config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/home', {templateUrl: 'partials/home.html', controller: 'HomeController'});
  $routeProvider.when('/matches', {templateUrl: 'partials/matches.html', controller: 'MatchesController'});
  $routeProvider.when('/groups', {templateUrl: 'partials/groups.html', controller: 'GroupController'});
  $routeProvider.otherwise({redirectTo: '/home'});
}]);

// Config menu collapse
$(document).on('click',function(){
	$('.collapse').removeClass("in");
})
