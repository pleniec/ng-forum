angular
  .module('ng-forum')
  .directive('signUpForm', ($http) ->
    restrict: 'E',
    templateUrl: '/templates/directives/sign-up-form.html',
    link: (scope, element, attrs) ->
      scope.signUp = () ->
        $http
          .post('/users', {user: {
            email: scope.email,
            name: scope.name,
            password: scope.password
          }}).then((() ->
            console.log('success')
          ),
          ((response) ->
            console.log('fail')
            console.log(response.data)
          ))
  )
