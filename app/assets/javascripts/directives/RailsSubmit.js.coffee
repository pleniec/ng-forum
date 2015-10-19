angular
  .module('ng-forum')
  .directive 'railsSubmit', ($http) ->
    restrict: 'E'
    require: '^railsForm'
    transclude: true
    template: '<button class="btn btn-primary" ng-click="submit()"><ng-transclude></ng-transclude></button>'
    link: (scope, element, attrs, railsForm) ->
      scope.submit = () ->
        $http
          .post(scope.$parent.url, scope.$parent.form)
          .then (response) ->
            scope.$parent.onSuccess()(response.data)
            scope.$parent.form = {}
          , (response) ->
            console.log(response.data)
            scope.$parent.errors = response.data.errors || response.data
