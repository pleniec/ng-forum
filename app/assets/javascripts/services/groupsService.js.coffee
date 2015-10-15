angular
  .module('ng-forum')
  .service 'groupsService', class GroupsService
    constructor: (@$http) ->

    getAll: (callback) ->
      @$http
        .get('/groups')
        .then (response) ->
          callback(response.data)
