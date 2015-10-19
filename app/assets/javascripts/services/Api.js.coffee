class Resource
  constructor: (@$http, @name) ->

  index: (params, callback) ->
    @$http
      .get("/#{@name}")
      .then (response) ->
        callback(true, response.data)
      , (response) ->
        callback(false, response.data)

  show: (id, callback) ->
    @$http
      .get("/#{@name}/#{id}")
      .then (response) ->
        callback(true, response.data)
      , (response) ->
        callback(false, response.data)

  create: (params, callback) ->
    @$http
      .post("/#{@name}", params)
      .then (response) ->
        callback(true, response.data)
      , (response) ->
        callback(false, response.data)

angular
  .module('ng-forum')
  .service 'api', class Api
    constructor: (@$http) ->

    resource: (name) ->
      new Resource(@$http, name)
