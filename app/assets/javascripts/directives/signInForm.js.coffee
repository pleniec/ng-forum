angular
  .module('ng-forum')
  .directive('signInForm', ($http, session) ->
    restrict: 'E',
    templateUrl: '/templates/directives/sign-in-form.html',
    link: (scope, element, attrs) ->
      scope.enteredInvalidCredentials = false

      scope.signIn = () ->
        session.signIn scope.email, scope.password, (success) ->
          scope.enteredInvalidCredentials = true if !success
  )
