angular
  .module('ng-forum')
  .factory 'GroupsResource', (Resource) ->
    class GroupsResource extends Resource
      constructor: () ->
        super 'groups'
