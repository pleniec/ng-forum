angular
  .module('ng-forum')
  .directive('signInForm', ->
    restrict: 'E',
    templateUrl: '/templates/directives/sign-in-form.html',
    link: (scope, element, attrs) ->
      scope.logIn = () ->
        console.log(scope.form)
  )
