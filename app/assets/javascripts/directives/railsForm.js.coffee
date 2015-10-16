angular
  .module('ng-forum')
  .directive 'railsForm', () ->
    restrict: 'E'
    template: '<form><ng-transclude></ng-transclude></form>'
    transclude: true
    scope:
      onSuccess: '&'
    controller: () ->
    link: (scope, element, attrs) ->
      scope.url = attrs.url
      scope.form = {}
      scope.errors = {}
