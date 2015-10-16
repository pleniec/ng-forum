angular
  .module('ng-forum')
  .directive 'createGroupForm', (session, $state, GroupsResource) ->
    restrict: 'E'
    templateUrl: '/templates/directives/create-group-form.html'
    link: (scope, element, attrs) ->
      scope.reloadState = () -> $state.reload()
        