angular
  .module('ng-forum', ['ui.router', 'ngCookies'])
  .config(($stateProvider, $httpProvider) -> (
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')

    $stateProvider
      .state('index', {
        url: '',
        templateUrl: '/templates/states/index.html'
      })
      .state('registration', {
        url: '/registration',
        templateUrl: '/templates/states/registration.html'
      })
  ))
