angular
  .module('ng-forum')
  .service 'session', class Session
    constructor: (@$http, @$cookies) ->

    getUser: () ->
      userString = @$cookies.get('user')
      if userString
        JSON.parse(userString)
      else
        null

    setUser: (user) ->
      @$cookies.put('user', JSON.stringify(user))

    destroyUser: () ->
      @$cookies.remove('user')

    isAuthenticated: () ->
      this.getUser() != null

    signIn: (email, password, callback) ->
      @$http
        .post('/users/sign_in', {user: {email: email, password: password}})
        .then (response) =>
          this.setUser(response.data)
          callback(true) if callback?
        , (response) ->
          callback(false) if callback?
      null

    signOut: (callback) ->
      @$http
        .delete('/users/sign_out')
        .then (response) =>
          this.destroyUser()
          callback() if callback?
      null
