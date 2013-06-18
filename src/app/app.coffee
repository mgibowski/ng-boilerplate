angular.module( 'ngBoilerplate', [
  'templates-app',
  'templates-component',
  'ngBoilerplate.home',
  'ngBoilerplate.about',
  'ui.route'
])

.config ($routeProvider) -> 
	$routeProvider.otherwise
  		redirectTo: '/home'

.run (titleService) ->
	titleService.setSuffix(' | ngBoilerplate')

.controller 'AppCtrl', ($scope, $location ) ->
