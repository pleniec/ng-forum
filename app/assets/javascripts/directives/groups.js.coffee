angular
  .module('ng-forum')
  .directive 'groups', (GroupsResource) ->
    restrict: 'E'
    templateUrl: '/templates/directives/groups.html'
    link: (scope, element, attrs) ->
      scope.groups = []
      
      (new GroupsResource()).index {}, (success, groups) ->
        scope.groups = groups if success
