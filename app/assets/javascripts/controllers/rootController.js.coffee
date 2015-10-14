angular
  .module('ng-forum')
  .controller 'RootController', ($scope, usersService, session) ->
    $scope.session = session

    $scope.signOut = () ->
      usersService.signOut (success) ->
        session.destroyUser() if success
