angular
  .module('ng-forum')
  .service 'groupsService', class GroupsService
    constructor: (@$http) ->

    getAll: (callback) ->
      @$http
        .get('/groups')
        .then (response) ->
          callback(response.data)

    create: (params, callback) ->
      @$http
        .post('/groups')
        .then (response) ->
          callback(response.data)
        , (response) ->
          callback(response.data)
