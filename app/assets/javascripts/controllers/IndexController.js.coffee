angular
  .module('ng-forum')
  .controller 'IndexController', ($scope, $state, api) ->
    $scope.groups = []

    api.resource('groups').index {}, (success, groups) ->
      $scope.groups = groups if success

    $scope.reloadState = (group) ->
      $scope.groups.push(group)
