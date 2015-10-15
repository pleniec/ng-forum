angular
  .module('ng-forum')
  .directive 'createGroupForm', (session, groupsService, $state) ->
    restrict: 'E'
    templateUrl: '/templates/directives/create-group-form.html'
    link: (scope, element, attrs) ->
      scope.errors = {}

      scope.createGroup = () ->
        
