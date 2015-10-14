angular
  .module('ng-forum')
  .directive('signUpForm', ($http, usersService, session) ->
    restrict: 'E',
    templateUrl: '/templates/directives/sign-up-form.html',
    link: (scope, element, attrs) ->
      scope.errors = {}

      scope.signUp = () ->
        usersService.signUp scope.email, scope.password, scope.name, (success, data) ->
          if success
            session.setUser(data)
          else
            scope.errors = data.errors
  )
