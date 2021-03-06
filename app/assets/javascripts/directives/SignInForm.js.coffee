angular
  .module('ng-forum')
  .directive('signInForm', ($http, session, usersService, $state) ->
    restrict: 'E',
    templateUrl: '/templates/directives/sign-in-form.html',
    link: (scope, element, attrs) ->
      scope.enteredInvalidCredentials = false

      scope.signIn = () ->
        usersService.signIn scope.email, scope.password, (user) ->
          if user
            session.setUser(user)
            $state.go('index')
          else
            scope.enteredInvalidCredentials = true
  )
