'use strict';


// Declare app level module which depends on filters, and services
angular.module('worldcupResults', [
  'ngRoute',
  'ngResource',
  'worldcupResults.filters',
  'worldcupResults.services',
  'worldcupResults.directives',
  'worldcupResults.controllers'
]).
config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/home', {templateUrl: 'partials/home.html', controller: 'HomeController'});
  $routeProvider.when('/matches', {templateUrl: 'partials/matches.html', controller: 'MatchesController'});
  $routeProvider.when('/groups', {templateUrl: 'partials/groups.html', controller: 'GroupsController'});
  $routeProvider.when('/donation', {templateUrl: 'partials/donation.html', controller: 'DonationController'});
  $routeProvider.otherwise({redirectTo: '/home'});
}]).
config(function($httpProvider) {
      //Enable cross domain calls
      $httpProvider.defaults.useXDomain = true;

      //Remove the header used to identify ajax call  that would prevent CORS from working
      delete $httpProvider.defaults.headers.common['X-Requested-With'];
  });

// Config menu collapse
$(document).on('click',function(){
	$('.collapse').removeClass("in");
})
