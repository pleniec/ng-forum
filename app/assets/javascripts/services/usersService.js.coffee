angular
  .module('ng-forum')
  .service 'usersService', class UsersService
    constructor: (@$http) ->

    signUp: (email, password, name, callback) ->
      @$http
        .post('/users', {user: {email: email, password: password, name: name}})
        .then (response) ->
          callback(true, response.data)
        , (response) ->
          callback(false, response.data)

    signIn: (email, password, callback) ->
      @$http
        .post('/users/sign_in', {user: {email: email, password: password}})
        .then (response) ->
          callback(response.data)
        , (response) ->
          callback(null)

    signOut: (callback) ->
      @$http
        .delete('/users/sign_out')
        .then (response) ->
          callback(true)
        , (response) ->
          callback(false)
