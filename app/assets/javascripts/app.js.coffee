angular
  .module('ng-forum', ['ui.router', 'ngCookies', 'ngAnimate', 'ui.bootstrap'])
  .config(($stateProvider, $httpProvider) -> (
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')

    $httpProvider.interceptors.push ($q) ->
      request: (config) ->
        NProgress.start()
        config

      response: (response) ->
        NProgress.done()
        response

      responseError: (rejection) ->
        NProgress.done()
        alert(rejection.data.message) if rejection.status == 403
        $q.reject(rejection)

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
  .run ($rootScope, session) ->
    $rootScope.$on '$stateChangeStart', (event, toState, toParams, fromState, fromParams) ->
      if session.isAuthenticated() and toState.onlyUnauthenticated
        event.preventDefault()

      if !session.isAuthenticated() and toState.onlyAuthenticated
        event.preventDefault()
