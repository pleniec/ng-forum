angular
  .module('ng-forum', ['ui.router', 'ngCookies', 'ngAnimate', 'ui.bootstrap'])
  .config(($stateProvider, $httpProvider) -> (
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')

    $stateProvider
      .state('index', {
        url: '',
        templateUrl: '/templates/states/index.html'
      })
      .state('registration', {
        url: '/registration',
        templateUrl: '/templates/states/registration.html',
        onlyUnauthenticated: true
      })
  ))
  .run ($rootScope, session, $location, $state) ->
    $rootScope.$on '$stateChangeStart', (event, toState, toParams, fromState, fromParams) ->
      if session.isAuthenticated() and toState.onlyUnauthenticated
        event.preventDefault()
