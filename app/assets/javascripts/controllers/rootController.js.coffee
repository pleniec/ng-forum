angular
  .module('ng-forum')
  .controller 'RootController', ($scope, session) ->
    $scope.session = session
