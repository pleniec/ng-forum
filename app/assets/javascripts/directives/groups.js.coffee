angular
  .module('ng-forum')
  .directive 'groups', (groupsService) ->
    restrict: 'E'
    templateUrl: '/templates/directives/groups.html'
    link: (scope, element, attrs) ->
      groupsService.getAll (groups) ->
        scope.groups = groups

      scope.groups = []
