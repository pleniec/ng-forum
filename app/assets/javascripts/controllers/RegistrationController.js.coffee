angular
  .module('ng-forum')
  .controller 'RegistrationController', ($scope, usersService, session, $state) ->
    $scope.errors = {}

    $scope.goToIndex = () ->
      $state.go 'index'
