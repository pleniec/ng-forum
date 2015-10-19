angular
  .module('ng-forum')
  .controller 'IndexController', ($scope, $state, GroupsResource) ->
    $scope.groups = []

    (new GroupsResource()).index {}, (success, groups) ->
      $scope.groups = groups if success

    $scope.reloadState = (group) ->
      $scope.groups.push(group)
