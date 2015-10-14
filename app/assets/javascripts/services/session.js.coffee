angular
  .module('ng-forum')
  .service 'session', class Session
    constructor: (@$cookies) ->

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
