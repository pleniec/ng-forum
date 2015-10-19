angular
  .module('ng-forum')
  .directive 'railsInput', () ->
    restrict: 'E'
    require: '^railsForm'
    templateUrl: '/templates/directives/rails-input.html'
    scope: {}
    link: (scope, element, attrs, railsForm) ->
      scope.attribute = attrs.attribute
      scope.type = attrs.type
